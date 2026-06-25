import pandas as pd
import random
import math

# Aufgabe 1

def fit_robust_scaler(df):
    return {
        "median_price": df["Grundpreis"].median(),
        "iqr_price": df["Grundpreis"].quantile(0.75) - df["Grundpreis"].quantile(0.25),

        "median_power": df["Leistung_kW"].median(),
        "iqr_power": df["Leistung_kW"].quantile(0.75) - df["Leistung_kW"].quantile(0.25),
    }

def transform_df(df, scaler):
    df = df.copy()
    
    df["Grundpreis"] = (
        df["Grundpreis"] - scaler["median_price"]
    ) / scaler["iqr_price"]

    df["Leistung_kW"] = (
        df["Leistung_kW"] - scaler["median_power"]
    ) / scaler["iqr_power"]

    return df

def build_pair(df, c1, c2, scaler, n_test=2):
    
    # Train data
    train = df[df["Fahrzeugklasse"].isin([c1, c2])].copy()

    # Test data (balanced)
    test = (
        train.groupby("Fahrzeugklasse")
             .apply(lambda x: x.sample(n_test, random_state=42))
             .reset_index(drop=True)
    )

    # Scaling
    train_scaled = transform_df(train, scaler)
    test_scaled = transform_df(test, scaler)

    return train_scaled, test_scaled

# Read CSV
df = pd.read_csv("auto/AutodatenbankAllEntries.csv")

scaler = fit_robust_scaler(df)


# Ersten 30 samples jeder Klasse
data = (
    df.groupby("Fahrzeugklasse")
      .head(30)
      [["Grundpreis", "Leistung_kW", "Fahrzeugklasse"]]
)

data_scaled = transform_df(data, scaler)


print("Class distribution:")
print(
    data["Fahrzeugklasse"]
    .value_counts()
    .sort_index()
)

# Testdaten aus der Aufgabenstellung
test_tuple = [
    ("smart fortwo Coupee 1.0", 11105, 52, 1),
    ("SEAT Ibiza 1.0 MPI", 12490, 48, 2),
    ("Subaru XV 1.6i", 22980, 84, 3),
    ("Skoda Octavia Combi RS", 31590, 169, 4)
]

test_data = pd.DataFrame(
    test_tuple,
    columns=["Modell", "Grundpreis", "Leistung_kW", "Fahrzeugklasse"])

test_data_scaled = transform_df(test_data, scaler)

# Trainingsdaten für Aufgabe 2
data_class1_2, test_1_2 = build_pair(df, 1, 2, scaler)
data_class2_3, test_2_3 = build_pair(df, 2, 3, scaler)
data_class3_4, test_3_4 = build_pair(df, 3, 4, scaler)
data_class4_5, test_4_5 = build_pair(df, 4, 5, scaler)
data_class5_6, test_5_6 = build_pair(df, 5, 6, scaler)

CLASS_NAMES = {
    1: "Kleinstwagen",
    2: "Kleinwagen",
    3: "Untere Mittelklasse",
    4: "Mittelklasse",
    5: "Obere Mittelklasse",
    6: "Oberklasse"
}

def heaviside(h):
    return 1 if h > 0 else 0

class Perceptron:

    def __init__(self, n_inputs, n_outputs, classes=None, weights=None):

        self.n_inputs = n_inputs
        self.n_outputs = n_outputs

        if classes is not None:
            self.class_mapping = {c: i for i, c in enumerate(classes)}
            self.reverse_mapping = {i: c for c, i in self.class_mapping.items()}
        else:
            self.class_mapping = None
            self.reverse_mapping = None

        if weights is None:

            self.weights = []

            for _ in range(n_outputs):
            
                row = []
            
                for _ in range(n_inputs):
                    row.append(random.uniform(-0.1, 0.1))
                
                row.append(0.0)  # Bias
            
                self.weights.append(row)

        else:
            self.weights = weights

    def forward(self, x):

        x_hat = list(x) + [1.0]

        outputs = []

        for row in self.weights:

            h = 0

            for w, xi in zip(row, x_hat):
                h += w * xi

            outputs.append(h)

        return outputs

    def predict(self, x):

        h = self.forward(x)

        return [heaviside(v) for v in h]

    def get_weights(self):
        return self.weights

# select a random sample from the dataset
def randomSelect(data):
    return data.sample(n=1).iloc[0]

# create a vector of length six with a single entry of 1
def one_hot(class_id):

    target = [0] * 6

    target[int(class_id) - 1] = 1

    return target

# calculate the normed error out of all datapoints
def error_norm(data, perceptron):

    error_sum = 0

    for _, row in data.iterrows():

        x = [row["Grundpreis"], row["Leistung_kW"]]

        target_class = perceptron.class_mapping[row["Fahrzeugklasse"]]

        outputs = perceptron.forward(x)

        prediction = outputs.index(max(outputs))

        for i in range(len(outputs)):
            t = 1 if i == target_class else 0
            p = 1 if i == prediction else 0
            error_sum += (t - p) ** 2

    return math.sqrt(error_sum)

#
#def hebbian(data,
#            tmax=5000,
#            learningRate=0.01,
#            errorMargin=8,
#            n_features=2,
#            n_outputs=6):
#
#    p = Perceptron(n_features, n_outputs)
#
#    t = 0
#
#    while True:
#
#        t += 1
#
#        row = randomSelect(data)
#
#        x = [row["Grundpreis"], row["Leistung_kW"]]
#
#        target = one_hot(row["Fahrzeugklasse"])
#
#        outputs = p.forward(x)
#
#        for output_index in range(n_outputs):
#
#            error = (
#                target[output_index]
#                - outputs[output_index]
#            )
#
#            for feature_index in range(n_features):
#
#                delta = (
#                    learningRate
#                    * error
#                    * x[feature_index]
#                )
#
#                p.weights[output_index][feature_index] += delta
#
#            # bias weight
#            p.weights[output_index][-1] += (
#                learningRate * error
#            )
#
#        # expensive -> don't do every iteration
#        if t % 100 == 0:
#
#            current_error = error_norm(data, p)
#
#            if current_error <= errorMargin:
#                print(
#                    f"Stopped after {t} iterations "
#                    f"(error={current_error:.4f})"
#                )
#                break
#
#        if t >= tmax:
#
#            print(
#                f"Reached tmax={tmax}"
#            )
#            break
#
#    return p

def normalize(p):
    for i in range(len(p.weights)):
        norm = math.sqrt(sum(w*w for w in p.weights[i]))
        if norm > 0:
            p.weights[i] = [w / norm for w in p.weights[i]]

def hebbian(
    data,
    tmax=5000,
    learningRate=0.05,
    errorMargin=8,
    n_features=2,
):
    # --- Klassen automatisch erkennen ---
    classes = sorted(data["Fahrzeugklasse"].unique())

    # Mapping: echte Klasse -> Index
    mapping = {c: i for i, c in enumerate(classes)}
    # Mapping: Index -> echte Klasse
    reverse_mapping = {i: c for c, i in mapping.items()}

    n_outputs = len(classes)

    # Perzeptron initialisieren
    p = Perceptron(n_features, n_outputs, mapping)

    t = 0

    while True:
        t += 1

        # zufällige Zeile ziehen
        row = randomSelect(data)

        x = [row["Grundpreis"], row["Leistung_kW"]]

        # --- Zielklasse korrekt mappen ---
        target_class = mapping[row["Fahrzeugklasse"]]

        outputs = p.forward(x)
        winner = outputs.index(max(outputs))

        # nur lernen wenn falsch
        if winner != target_class:

            # richtige Klasse verstärken
            for i in range(n_features):
                p.weights[target_class][i] += learningRate * x[i]

            p.weights[target_class][-1] += learningRate

            # falsche Klasse schwächen
            for i in range(n_features):
                p.weights[winner][i] -= learningRate * x[i]

            p.weights[winner][-1] -= learningRate

        # --- Fehler nur alle 100 Iterationen ---
        if t % 100 == 0:
            current_error = error_norm(data, p)

            if current_error <= errorMargin:
                print(
                    f"Stopped after {t} iterations "
                    f"(error={current_error:.4f})"
                )
                break

        if t >= tmax:
            print(f"Reached tmax={tmax}")
            break

    # optional: Mapping zurückgeben für spätere Interpretation
    p.class_mapping = mapping
    p.reverse_mapping = reverse_mapping

    return p


def classify(perceptron, grundpreis, leistung):

    x = [grundpreis, leistung]

    outputs = perceptron.forward(x)

    winner = outputs.index(max(outputs))

    predicted_class = perceptron.reverse_mapping[winner]

    return predicted_class, outputs

def test(test_data, perceptron):
    print("\n--- TEST ---\n")
    
    for row in test_data.itertuples(index=False):

        predicted, outputs = classify(
            perceptron,
            row.Grundpreis,
            row.Leistung_kW
        )

        print(row.Modell)
        print("Soll:", CLASS_NAMES[row.Fahrzeugklasse])
        print("Ist :", CLASS_NAMES[predicted])
        print("Outputs:", [round(v, 4) for v in outputs])
        print()

# Aufgabe 1

print("6 outputs test")
perceptron = hebbian(data)

test(test_data, perceptron)

# Aufgabe 2
print("2 output tests")
perceptron1v2 = hebbian(data_class1_2, 5000, 0.001, 8, 2)
test(test_1_2, perceptron1v2)

perceptron2v3 = hebbian(data_class2_3, 5000, 0.001, 8, 2)
test(test_2_3, perceptron2v3)

perceptron3v4 = hebbian(data_class3_4, 5000, 0.001, 8, 2)
test(test_3_4, perceptron3v4)

perceptron4v5 = hebbian(data_class4_5, 5000, 0.001, 8, 2)
test(test_4_5, perceptron4v5)

perceptron5v6 = hebbian(data_class5_6, 5000, 0.001, 8, 2)
test(test_5_6, perceptron5v6)

# Aufgabe 3

