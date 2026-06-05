# -*- coding: utf-8 -*-

import pandas as pd
import matplotlib.pyplot as plt

from sklearn.tree import DecisionTreeClassifier
from sklearn.tree import plot_tree

# Load dataset
df = pd.read_csv(
    "iris/iris.data",
    header=None,
    names=[
        "sepal_length",
        "sepal_width",
        "petal_length",
        "petal_width",
        "iris_type"
    ]
)

# Features and target
X = df.drop("iris_type", axis=1)
y = df["iris_type"]

# CART model
cart = DecisionTreeClassifier(
    criterion="gini",
    random_state=42
)

cart.fit(X, y)

# Visualize tree
plt.figure(figsize=(12, 8))

plot_tree(
    cart,
    feature_names=X.columns,
    class_names=cart.classes_,
    filled=True,
    rounded=True
)

plt.title("CART Decision Tree - Iris Dataset")

plt.show()