# TP2 — Modélisation en PDDL : Tours de Hanoï & Taquin

Université Grenoble Alpes — M1 Informatique
UE : Planification automatique et techniques d'intelligence artificielle
**Nom : BENAOUDIA Ilian**

---

## 🌟 Objectif du TP

Modéliser en langage PDDL deux problèmes classiques de planification :

* les **Tours de Hanoï** (3 disques, 3 piquets)
* le **Taquin** (3x3)

Et valider leur exécution avec un planificateur (PDDL4J) sur la VM PATIA.

---

## 📂 Structure du projet

```
TP2-PDDL/
├── hanoi/
│   ├── domain.pddl             # Domaine des Tours de Hanoï
│   ├── problem-3disks.pddl     # Problème simple avec 3 disques
│
├── taquin/
│   ├── domain.pddl             # Domaine du taquin 3x3
│   ├── p001.pddl               # Problème trivial (déjà résolu)
│   ├── p002.pddl               # 1 déplacement nécessaire
│   ├── p003.pddl               # 2 déplacements nécessaires (non résolu)
```

---

## 🚀 Modélisation : Tours de Hanoï

### Domaine

Le fichier `hanoi/domain.pddl` définit :

* des objets `disk` et `peg`
* les prédicats `(on)`, `(top)`, `(clear)`, `(smaller)` et `(top-disk)`
* deux actions STRIPS compatibles :

  * `move-to-empty` pour poser un disque sur un piquet vide
  * `move-on-bigger` pour poser un disque sur un autre plus grand

### Problème

* Le fichier `problem-3disks.pddl` modélise une configuration classique :
  tous les disques sont sur le premier piquet, et doivent être empilés sur le troisième.

### Test

* Plan trouvé avec PDDL4J en utilisant l'action `move-to-empty` sur un test simple
* Le modèle est fonctionnel avec contrainte de taille respectée

---

## 🤖 Modélisation : Taquin (3x3)

### Domaine

Le fichier `taquin/domain.pddl` contient :

* des objets `tile` et `position`
* des prédicats `(at ?t ?p)`, `(blank ?p)` et `(adjacent ?p1 ?p2)`
* une action `move` qui échange une tuile avec le trou si les deux sont adjacents

### Problèmes

Trois cas ont été modélisés :

| Fichier     | Description                       | Plan généré                  |
| ----------- | --------------------------------- | ---------------------------- |
| `p001.pddl` | Taquin déjà résolu                | 2 actions triviales          |
| `p002.pddl` | T8 mal placé, 1 mouvement requis  | 1 action trouvée             |
| `p003.pddl` | T7 et T8 inversés, plan plus long | Aucun plan trouvé (FF & HSP) |

### Observations

* Le domaine est minimal mais efficace pour gérer les états
* Le fichier `p003.pddl` met en évidence les limites de FF/HSP dans des cas non triviaux

---

## 🛠️ Exécution avec PDDL4J

### Depuis la VM PATIA :

```bash
cd TP2-PDDL-Linux/pddl
./pddl4j.sh
```

### Étapes dans le script :

1. Choisir l’algorithme : `1` pour HSP ou `2` pour FF
2. Entrer le chemin du fichier `domain.pddl`
3. Entrer le chemin du fichier `problem.pddl` à tester
4. Saisir un timeout (ex : `30`)

### Exemple :

```bash
Enter choice [1 - 3] : 2
Enter domain file [path to the file]: taquin/domain.pddl
Enter problem file [path to the file]: taquin/p002.pddl
Timeout [int]: 30
```

---

## 📊 Conclusion

* Les modélisations sont **valides et testées avec PDDL4J** sur la VM PATIA
* Le modèle Hanoï permet d'explorer la planification hiérarchique
* Le modèle Taquin met en évidence des difficultés heuristiques réalistes

**Tous les fichiers sont organisés proprement et prêts pour un rendu clair et exécutable**

---

## 📅 Auteur

**Ilian Benaoudia** — M1 Informatique UGA — TP2 PDDL 2025