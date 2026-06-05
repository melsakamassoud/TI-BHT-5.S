import pandas as pd
from collections import Counter

# --------------------------------------------------
# Parameter
# --------------------------------------------------

MIN_KNOTENGROESSE = 3

MERKMALE = [
    "petal_length",
    "petal_width"
]

# --------------------------------------------------
# Daten laden
# --------------------------------------------------

df = pd.read_csv(
    "iris/iris.data",
    header=None,
    names=[
        "sepal_length",
        "sepal_width",
        "petal_length",
        "petal_width",
        "klasse"
    ]
)

def gini(labels):
    """
    Berechnet die Gini-Unreinheit einer Klasse.
    """

    n = len(labels)

    if n == 0:
        return 0

    haeufigkeiten = Counter(labels)

    impurity = 1

    for anzahl in haeufigkeiten.values():
        p = anzahl / n
        impurity -= p ** 2

    return impurity


def kandidatenschwellen(werte):
    """
    Erzeugt Schwellenwerte als Mittelpunkte
    benachbarter sortierter Werte.

    Beispiel:

    1.0 1.1 1.4 1.5 4.7

    ->
    1.05
    1.25
    1.45
    3.10
    """

    unique = sorted(set(werte))

    schwellen = []

    for i in range(len(unique) - 1):
        schwelle = (unique[i] + unique[i + 1]) / 2
        schwellen.append(schwelle)

    return schwellen


def gewichtete_gini(linke_daten, rechte_daten):
    """
    Berechne den gewichteten Gini-Index aus dem linken
    und rechten Datensätzen, die nach dem Schwellwert
    geteilt wurden.
    """
    gesamt = len(linke_daten) + len(rechte_daten)

    g_links = gini(linke_daten["klasse"])
    g_rechts = gini(rechte_daten["klasse"])

    return (
        len(linke_daten) / gesamt * g_links
        + len(rechte_daten) / gesamt * g_rechts
    )


def mehrheitsklasse(daten):
    return Counter(daten["klasse"]).most_common(1)[0][0]


# --------------------------------------------------
# Knoten
# --------------------------------------------------

class Knoten:

    def __init__(
        self,
        merkmal=None,
        schwelle=None,
        links=None,
        rechts=None,
        vorhersage=None,
        anzahl=0
    ):
        self.merkmal = merkmal
        self.schwelle = schwelle
        self.links = links
        self.rechts = rechts
        self.vorhersage = vorhersage
        self.anzahl = anzahl

# finde Schwellwert mit geringers gini-Verunreinigung 
def bester_split(daten):

    beste_gini = float("inf")

    bestes_merkmal = None
    beste_schwelle = None

    # Reihenfolge wichtig:
    # Bei Gleichstand gewinnt das erste Merkmal.
    for merkmal in MERKMALE:

        schwellen = kandidatenschwellen(daten[merkmal])

        for schwelle in schwellen:

            links = daten[daten[merkmal] <= schwelle]
            rechts = daten[daten[merkmal] > schwelle]

            # Mindestgröße beachten
            if len(links) < MIN_KNOTENGROESSE:
                continue

            if len(rechts) < MIN_KNOTENGROESSE:
                continue

            g = gewichtete_gini(links, rechts)

            # STRICTLY LESS THAN
            # Dadurch bleibt bei Gleichstand
            # das zuerst gefundene Merkmal erhalten.
            if g < beste_gini:
                beste_gini = g
                bestes_merkmal = merkmal
                beste_schwelle = schwelle

    return bestes_merkmal, beste_schwelle


# --------------------------------------------------
# Baum erzeugen
# --------------------------------------------------

def baum_erzeugen(daten):

    labels = daten["klasse"]

    # Knoten rein
    if len(set(labels)) == 1:
        return Knoten(
            vorhersage=labels.iloc[0],
            anzahl=len(daten)
        )

    # Zu wenige Datensätze
    if len(daten) < 2 * MIN_KNOTENGROESSE:
        return Knoten(
            vorhersage=mehrheitsklasse(daten),
            anzahl=len(daten)
        )

    merkmal, schwelle = bester_split(daten)

    if merkmal is None:
        return Knoten(
            vorhersage=mehrheitsklasse(daten),
            anzahl=len(daten)
        )

    links = daten[daten[merkmal] <= schwelle]
    rechts = daten[daten[merkmal] > schwelle]

    return Knoten(
        merkmal=merkmal,
        schwelle=schwelle,
        links=baum_erzeugen(links),
        rechts=baum_erzeugen(rechts),
        anzahl=len(daten)
    )



# gebe metadaten zu dem Baum aus
def baum_ausgeben(knoten, tiefe=0):

    einrueckung = "    " * tiefe

    if knoten.vorhersage is not None:

        print(
            f"{einrueckung}"
            f"Blatt -> {knoten.vorhersage}"
            f" ({knoten.anzahl} Datensätze)"
        )

        return

    print(
        f"{einrueckung}"
        f"{knoten.merkmal} <= "
        f"{knoten.schwelle:.2f}"
        f" ({knoten.anzahl} Datensätze)"
    )

    print(f"{einrueckung}LINKS:")
    baum_ausgeben(knoten.links, tiefe + 1)

    print(f"{einrueckung}RECHTS:")
    baum_ausgeben(knoten.rechts, tiefe + 1)


# --------------------------------------------------
# Start
# --------------------------------------------------

wurzel = baum_erzeugen(df)

print("\nCART-Baum:\n")
baum_ausgeben(wurzel)
