
# 📦 Projet PATIA — TPs 1 à 3

Université Grenoble Alpes — M1 Informatique  
UE : Planification automatique et techniques d'intelligence artificielle  
**Nom : BENAOUDIA Ilian**

---

## 🔍 TP1 — Recherche d’états : N-Puzzle

Ce TP avait pour but d’implémenter plusieurs algorithmes de recherche pour résoudre le taquin (n-puzzle), à savoir :
- **BFS** (Breadth First Search)
- **DFS** (Depth First Search)
- **A\*** (A-star) avec une heuristique de Manhattan

Les performances ont été comparées sur des puzzles générés automatiquement. Un benchmark Python est fourni avec un script de génération et de visualisation (graphe).

**Résultats principaux** :
- A* est systématiquement le plus performant.
- DFS est inefficace dans les cas complexes.

---

## 🧠 TP2 — Modélisation en PDDL : Tours de Hanoï & Taquin

Ce TP visait à modéliser deux problèmes classiques en langage PDDL :  
- Les **Tours de Hanoï** (3 disques, 3 piquets)
- Le **Taquin 3x3** (puzzle)

Chaque problème a été modélisé via un fichier `domain.pddl` et plusieurs fichiers `problem.pddl`. La résolution a été testée via **PDDL4J** dans la VM PATIA.

**Résultats principaux** :
- Le modèle des Tours de Hanoï fonctionne et respecte les contraintes de taille.
- Le modèle du taquin permet de résoudre certains cas simples (jusqu'à 2 coups), mais pas les plus complexes.

---

## 📦 TP3 — Sokoban : Génération et Résolution en PDDL

Ce TP consistait à modéliser le jeu **Sokoban** en PDDL et à l’exécuter via une interface web de visualisation.

**Fichiers clés** :
- `sokoban.pddl` : modèle PDDL du domaine
- `problem-test.pddl` : instance **résoluble manuellement**
- `generator.py` : script de génération de niveaux

**Résultats** :
- Une carte simple a été définie **manuellement**, avec une **solution écrite à la main**.
- La visualisation via interface web **fonctionne parfaitement** et est accessible via :  
  👉 [http://localhost:8888/test.html](http://localhost:8888/test.html)
- La commande pour exécuter l’interface :

```bash
mvn package
java --add-opens java.base/java.lang=ALL-UNNAMED \
     -server -Xms2048m -Xmx2048m \
     -cp target/sokoban-1.0-SNAPSHOT-jar-with-dependencies.jar \
     sokoban.SokobanMain
```

**Limites** :
- Tous les niveaux générés automatiquement ne sont **pas résolvables**.
- Aucun algorithme de planification n’a été utilisé pour résoudre automatiquement les cartes.
- Le TP n’a **pas pu être finalisé complètement**, faute de compréhension suffisante sur la génération de niveaux résolvables.

---

📁 Chaque TP est dans son propre dossier (`TP1-NPuzzle`, `TP2-PDDL`, `TP3-Sokoban`) et peut être exécuté de façon indépendante.

**Projet réalisé dans le cadre de l’UE PATIA — UGA M1 Informatique 2025**