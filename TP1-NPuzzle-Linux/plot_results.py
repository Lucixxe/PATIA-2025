import pandas as pd
import matplotlib.pyplot as plt
import os

df = pd.read_csv("results/benchmark.csv")
grouped = df.groupby(["length", "algo"])["time"].mean().reset_index()
pivot = grouped.pivot(index="length", columns="algo", values="time")

plt.figure(figsize=(10, 6))
for algo in pivot.columns:
    plt.plot(pivot.index, pivot[algo], label=algo, marker='o')

plt.title("Comparaison des performances - BFS / DFS / A*")
plt.xlabel("Difficulté (longueur du plan)")
plt.ylabel("Temps moyen de résolution (secondes)")
plt.grid(True)
plt.legend()
plt.tight_layout()

if not os.path.exists("results"):
    os.makedirs("results")
plt.savefig("results/benchmark_plot.png")
print("Graphe enregistré dans results/benchmark_plot.png")