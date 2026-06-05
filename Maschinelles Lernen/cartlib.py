import panda as pd
from sklearn.tree import DecisionTreeClassifier
from sklearn.tree import plot_tree
import matplotlib.pyplot as plt

# Iris-Datei einlesen
df = pd.read_csv(
        "iris.data",
        header=None,
        names=[
            "sepal_length",
            "sepal_width",
            "petal_length",
            "petal_width",
            "iris type"
            ]
        )

x = df.drop("iris type", axis=1)
y = df["iris type"]

cart = DecisionTreeClassifier(
        criterion = "gini",
        random_state=42
        )

cart.fit(X, y)

# Baum anzeigen
plt.figure(figsize=(14, 8))
plot_tree(
        cart,
        feature_names=X.columns,
        class_names=cart.classes_,
        filled=True
)

plt.show()
