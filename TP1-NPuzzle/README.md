# TP1 — Recherche d’états : Taquin (N-Puzzle)

Université Grenoble Alpes — M1 Informatique
UE : Planification automatique et techniques d'intelligence artificielle
**Nom : BENAOUDIA Ilian**

---

## 🌟 Objectif du TP

Implémenter et comparer plusieurs algorithmes de recherche dans un espace d'états, appliqués au **taquin (n-puzzle)** :

* **BFS** (Breadth First Search)
* **DFS** (Depth First Search)
* **A\*** (A-star) avec heuristique de Manhattan

Comparer leurs performances sur des puzzles de difficulté croissante.

---

## 📂 Structure du projet

```
TP1-NPuzzle/
├── npuzzle/               # Code source du taquin
├── puzzles/               # Puzzles générés automatiquement
├── results/               # CSV + graphe de performance
├── benchmark.py           # Script pour mesurer les performances (compatible VM PATIA)
├── plot_results.py        # Script pour tracer le graphe (compatible VM PATIA)
├── solve_npuzzle.py       # Résolution du taquin (Python 3.7+)
├── generate_npuzzle.py    # Génération de puzzles aléatoires (Python 3.7+)
├── README.md              # Présent fichier
```

---

## 🚀 Utilisation (compatible VM PATIA)

### 1. Générer les puzzles

La génération est automatiquement intégrée dans `benchmark.py`.

Elle repose sur la commande suivante :

```bash
python3 npuzzle/generate_npuzzle.py -s 3 -ml 10 -n 3 puzzles
```

Cela produit 3 puzzles par niveau de difficulté (1 à 10) de taille 3x3, stockés dans le dossier `puzzles/`.

### 2. Lancer le benchmark

```bash
python3 benchmark.py
```

Résultats enregistrés dans `results/benchmark.csv`

### 3. Tracer la courbe

```bash
python3 plot_results.py
```

Une image `results/benchmark_plot.png` est générée dans le terminal. Elle n'est **pas affichée automatiquement** (car la VM n'a pas d'interface graphique).

---

## ⚙️ Détails techniques

### ✔️ BFS / DFS

Implémentés manuellement avec une file (BFS) ou une pile (DFS).

### ✔️ A\*

Utilise une heuristique de **distance de Manhattan** sur chaque tuile.

### ✔️ Fichier `benchmark.csv`

Contient pour chaque puzzle :

* la difficulté (`length`)
* l’algorithme (`algo`)
* le temps de résolution (`time` en secondes)

---

## 📊 Résultats observés

* **A\*** est systématiquement le plus rapide et stable.
* **BFS** reste correct mais plus lent à mesure que la difficulté augmente.
* **DFS** est instable et inefficace : explore de très longs chemins.

Un graphe est généré pour visualiser cette comparaison.

---

## 📌 Remarques

* Tous les algorithmes fonctionnent sur des puzzles **résolubles uniquement** (filtrage automatique).
* Le code est compatible avec la **VM PATIA (Python 3.7.3)**.
* Le dépôt est structuré proprement pour permettre des rendus TP séparés.