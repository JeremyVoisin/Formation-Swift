# TP 2.1 - Manipulation des chaînes de caractères

## Introduction

Ce TP permet la manipulation des outils de base de la gestion de chaînes de caractères.

## Outils disponibles

Pour ce TP, nous utiliserons les éléments de Swift suivant :

```swift
//Déclaration de chaîne de caractères monoligne
var chaine1 = "Hello"

//Déclaration de chaine multiligne
let chaine2 = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

//Concaténation de chaînes
let chaine3 = chaine1 + chaine2
//ou, de manière destructive
chaine1 += chaine2
//ou encore 
chaine1.append(chaine2)

//Interpolation de chaine
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//L'opérateur de récupération partiel, par exemple ici, récupération des 6 premiers caractères
let index = chaine2.index(chaine2.startIndex, offsetBy: 5)
let substring = chaine2[...index]

//Recherche d'une chaïne de caractère
//Nous donne la position dans le texte de l'occurence recherchée
let rangeOfWhite = chaine2.range(of: "White") ?? chaine2.startIndex..<chaine2.endIndex
let finDuMot = rangeOfWhite.upperBound

//Donne la position directement après celle donnée en paramètre
let positionSuivante = chaine2.index(after: finDuMot)

//Recherche d'un caractère
let indexOfComma = chaine2.index(of: ";") ?? chaine2.endIndex

let chaineDeCaractere: String? = nil

let uneAutreChaine = chaineDeCaractere ?? "Hello world"
```

## Énoncé

Pour ce TP, nous disposons d'un texte multiligne de Lorem Ipsum de 200 mots environ, et nous souhaitons repérer les mots qui se trouvent après le mot **"pellentesque"**.

### Démarche

Il convient dans ce TP d'utiliser uniquement les outils indiqués plus haut et ceux vu lors des TP précédents. Il est nécessaire de repérer les occurences du mot clé les unes après les autres. A chaque occurence trouvée, il faut inspecter la suite du texte pour repérer le mot qui la suit.

## Compléter ce TP

Pour ce TP, nous utiliserons une nouvelle fois le playground Swift. Pour compléter ce TP, il est nécessaire d'afficher, grâce à l'interpolation de chaînes, l'ensemble des mots qui se trouvent après le mot clé donné en énoncé.