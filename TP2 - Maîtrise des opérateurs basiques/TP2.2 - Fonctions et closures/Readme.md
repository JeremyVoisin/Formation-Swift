# TP 2.2 - Les fonctions et closures

## Introduction

Pour ce TP, nous allons réaliser une petite calculatrice avec des opérations variées.

## Outils disponibles

Nous disposons des outils suivants pour réaliser cet exercice

```swift
//Récupération de l'entrée utilisateur
let variable = readLine()

//Unwrapping de la variable réponse de l'utilisateur
print(variable!)

//Déclaration d'une fonction
func myFunction(_ anArg: Int) -> Int{
    return anArg * 10
}

//Déclaration d'une closure
let uneClosure = { (a: String, b: String) -> String in a + b}

//Bloc switch case
let choice = 1

switch choice{
    case 1:
        print("One")
    case 2:
        print("Two")
    default: 
        print("None")
}

//Déclaration de boucle
var condition = true
repeat{

}while(condition)
```

Rappels de mathématique :

fib(x) = fib(x-1) + fib(x - 2) avec fib(x) = 1 si x <= 1

fact(x) = 1\*2\*3\*4\*...\*x

## Énoncé

Dans ce TP, nous souhaitons réaliser une calculatrice capable de réaliser des opérations simples dans un premier temps telles que les additions, soustractions, multiplications, divisions, racines carrés, puis, on ajoutera une opération fibonacci et factorielle, et enfin une opération puissance.

Les contraintes suivantes sont ajoutées :

- L'utilisateur doit arriver sur un menu proposant les opérations citées ci-avant
- Lorsque l'utilisateur choisit fibonacci ou factorielle, il est nécessaire d'appeler des fonctions récursives
- Pour les autres opérations, nous appellerons des closures
- L'opération puissance prendra deux paramètres en entrée, une base et un exposant
- Après chaque opération, l'utilisateur pourra choisir une nouvelle opération ou bien de quitter le programme


## Compléter ce TP

Pour valider ce TP, il faut arriver sur une menu principal nous proposant l'ensemble des opérations basiques (additions, soustractions, multiplication, division, sqrt, puissance) sous forme de closure, les opération de factorielle et de fibonacci sous forme de fonctions récursives.