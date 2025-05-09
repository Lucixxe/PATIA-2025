# TP Sokoban — Génération et Résolution PDDL

## 🎯 Objectif

Ce projet consiste à modéliser le jeu **Sokoban** en PDDL (Planning Domain Definition Language) et à l’intégrer dans une interface web de visualisation fournie. Il a été réalisé dans le cadre du module **PATIA**.

## 🔧 Contenu

- `sokoban.pddl` : fichier du **domaine PDDL**.
- `problem-test.pddl` : une instance **résoluble** construite **manuellement**.
- `generator.py` : script Python permettant de générer des niveaux à partir de cartes existantes (dont certaines tirées de Sokoban classique).
- `SokobanMain.java` (via interface web) : permet d’exécuter et visualiser une solution dans l’interface graphique.

## 🧩 Fonctionnalité principale

- Un niveau simple a été défini **à la main**, avec une solution connue.
- L’exécution passe par l’interface web, qui affiche l’état du jeu pas à pas à partir du plan.
- Le lien avec l’interface **fonctionne parfaitement**.
- Il est possible d'accéder à l'interface via : [http://localhost:8888/test.html](http://localhost:8888/test.html)

## ▶️ Compilation & exécution

Pour lancer l’interface graphique :

```bash
mvn package
```

Puis exécuter :

```bash
java --add-opens java.base/java.lang=ALL-UNNAMED \
     -server -Xms2048m -Xmx2048m \
     -cp target/sokoban-1.0-SNAPSHOT-jar-with-dependencies.jar \
     sokoban.SokobanMain
```

## ✅ Résultats

- La modélisation PDDL fonctionne.
- Une instance de niveau a été **créée manuellement**.
- La **solution** de ce niveau a également été **fournie à la main**, **sans utiliser d'algorithme de planification**.
- L’interface graphique affiche correctement la solution.
- L'accès à l'interface fonctionne via le navigateur à l'adresse : `http://localhost:8888/test.html`.

## ⚠️ Limites

- **Aucun algorithme de résolution automatique** n’a été utilisé.
- **Tous les niveaux générés automatiquement ne sont pas résolvables**, ce qui empêche nos algorithmes de les traiter correctement.
- **Je n’ai pas pu finaliser le TP**, principalement par **manque de compréhension sur la manière de garantir des niveaux résolvables** automatiquement.