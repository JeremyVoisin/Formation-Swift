# TP2.0 - Manipulation des opérateurs de base

## Introduction

Ce TP a pour but de manipuler les opérateurs de base du langage Swift.

## Outils disponibles pour ce TP

Pour ce TP, nous utiliserons les éléments de Swift suivant :

```swift
//Déclaration de variable
var variableA = "Hello"

//Déclaration de constante
let variableB = 42

//Déclaration de Tuple
let tupleA = (variableA, variableB)

//Récupération des valeurs d'un Tuple
let (valeurA, valeurB) = tupleA

//Il est possible de faire une récupération partielle grâce à l'opérateur _
let (valeurA, _) = tupleA

//Les comparaisons entres tuples
(1, "apple") < (2, "pear")

//Les blocs conditionnels
if variableB == valeurB {
    print("Hello world")
}

//Les boucles sur une liste
let liste1 = [1,2,3,4]
for element in liste1 {
    print(element)
}
```

## Énoncé

Hugh, le maître d'un dojo souhaite se retirer, mais il ne peut en convenir que si l'un de ses étudiants devient maître de son dojo à sa place. Cependant, ses exigeances sont élevées, il souhaite qu'un de ses élèves plus jeunes que lui le batte pour prendre sa place, mais il n'acceptera qu'un seul affrontement. 

Le maître possède les caractéristiques suivantes :

```swift
//Le Tuple du maître contenant son nom, son niveau, son grade et son âge en dernier
let tupleMaster = ("Hugh", 10, "master", 53)
```

### Démarche

Afin de convenir aux éxigeances du maître, les élèves doivent envoyer le candidat le plus adéquat affronter le maître. Il s'agit de choisir d'abord dans la liste suivante des élèves lequel répond le plus aux exigeances.

```swift
//Les étudiants
let studentTuples = [("John", 9, "student", 25), ("Jean", 11, "student", 39), ("Chris", 5, "student", 43), ("Hélène", 2, "student", 10), ("Hector", 12, "student", 64)]
```

Lorsque l'étudiant convenant le plus aux critères est choisi, il devra affronter le maître, et, en fonction de son niveau, il battra le maître et deviendra ainsi son successeur.

## Compléter ce TP

Pour ce TP, nous utiliserons un playground Swift ou la REPL et uniquement les outils cités plus haut. Pour valider ce TP, il faut remplir les étapes décrites dans la démarche et afficher le résultat du combat en fin de programme.

La base de notre programme sera la suivante.

```swift
import Cocoa

//Le Tuple du maître
let tupleMaster = ("Hugh", 10, "master", 53)

//Les étudiants
let studentTuples = [("John", 9, "student", 25), ("Jean", 11, "student", 39), ("Chris", 5, "student", 43), ("Hélène", 2, "student", 10), ("Hector", 12, "student", 64)]
```