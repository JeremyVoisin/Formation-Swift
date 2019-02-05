# TP 5 - Les génériques

## Introduction

Dans ce TP, nous explorerons les classes génériques en Swift

## Outils disponibles

Nous disposons des outils suivants ainsi que de ceux abordés en formation pour réaliser cet exercice

```swift
public class MyGenericClass<T>{
  var u: T
  public func printMyTypedClass(){
    print(u)
  }

  public init(x: T){
    u = x
  }
}
```

## Énoncé

Nous possédons un ensemble de tableaux hétérogènes désordonés que nous souhaiterions trier dans l'ordre décroissant dans le fichier **collections.swift**. 

Nous souhaitons pour cela qu'une seule classe soit créée et que quelque soit le type, nous puissions avoir une collection de chaque éléments triés à la fin du programme sans avoir eu à paramétrer le type où que ce soit.

## Compléter ce TP

Il faut avoir pu afficher l'ensemble des collections ordonnées et n'avoir qu'une seule classe dans notre programme pour pouvoir valider ce TP.