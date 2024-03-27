# Gestionnaire de Fenêtres Dofus avec AutoHotkey

Ce script AutoHotkey (AHK) offre plusieurs fonctionnalités pour gérer facilement plusieurs instances du jeu Dofus. Il permet aux utilisateurs de passer d'une instance de jeu à l'autre, de mettre le script en pause, et de simuler des clics de souris dans toutes les fenêtres de jeu ouvertes en même temps.

## Fonctionnalités

### Activation de la Fenêtre Suivante

- **Touche:** `F3`
- Cette fonction permet de passer à la fenêtre Dofus suivante. Elle est particulièrement utile pour les joueurs qui gèrent plusieurs comptes et ont besoin de passer rapidement de l'un à l'autre.

### Pause/Reprise du Script

- **Touche:** `F10`
- Cette fonction met le script en pause. Appuyer à nouveau sur `F10` reprend l'exécution du script. Cela peut être utile pour arrêter temporairement les fonctionnalités du script sans le fermer complètement.

### Simulation de Clics de Souris

- **Combinaison de touches:** `Alt` + Clic gauche (`!LButton`)
- Cette fonction capture la position actuelle de la souris et simule un clic de souris à cette position dans toutes les instances ouvertes de Dofus. Cela permet d'effectuer des actions simultanées sur plusieurs comptes.

## Prérequis

Pour utiliser ce script, vous aurez besoin de :

- AutoHotkey installé sur votre système.
- Plusieurs instances de Dofus en cours d'exécution.

## Installation

1. Copiez le script dans un fichier avec l'extension `.ahk`.
2. Double-cliquez sur le fichier pour lancer le script.
3. Assurez-vous d'exécuter le script avec des privilèges administrateur si vos instances de Dofus sont lancées avec élévation.

## Utilisation

Lancez simplement le script, puis utilisez les touches décrites dans les fonctionnalités ci-dessus pour gérer vos instances de Dofus.

## Notes

- Le script initialise la liste des fenêtres Dofus au démarrage. Si vous ouvrez de nouvelles instances de Dofus après le démarrage du script, vous devrez redémarrer le script pour inclure les nouvelles instances.
- Pour des performances optimales, il est recommandé de ne pas utiliser le script avec un nombre excessivement élevé d'instances de Dofus.

