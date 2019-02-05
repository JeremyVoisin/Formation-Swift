# TP 3.2 - Les subscripts et optionnels

## Introduction

Ce TP a pour objectif de pratiquer l'usage des subscripts et optionnels.

## Outils disponibles

Nous disposons des outils suivants pour réaliser cet exercice ainsi que tous les autres outils vu jusqu'à présent.

```swift

//Déclaration d'une variable optionnelle
var myOptionalVariable: Int? = 10

//Opérateur nil coalescing
let result = myOptionalVariable ?? 20

//Unwrapping explicite de la variable
print(myOptionalVariable!)

//Unwrapping sécurisé
guard let variableUnwrappee = myOptionalVariable else{
    return false
}

//Chainage d'optionnels
let dict = ["a":["b":5]]

dict["a"]?["b"]

//Création d'un subscript
subscript(index: Int) -> Int{
    return myVariable[index]
}

```

## Énoncé

Dans ce TP, nous souhaitons représenter une concession automobile qui vend plusieurs types de voitures et des motos.

Lorsqu'un client arrive à la concession, il peut demander une personnalisation du véhicule qu'il souhaite acheter si il s'agit d'un véhicule neuf.

Cette possibilité n'est pas infinie puisque le client n'a le droit qu'à 3 options sur son véhicule. Parmi les options possible, nous avons les suivantes :

- Climatisation
- Direction assistée
- Navigation GPS
- Park assist
- Radio, CD, MP3, Bluetooth

Lorsqu'un client effectue une commande en configurant un véhicule, il est nécessaire de consulter la disponibilité dans le parc dans un premier temps. Si le parc ne possède pas la voiture ou la moto, il faut alors aller chercher dans les stocks. Et si un véhicule correspondant n'est pas disponible, alors la recherche retournera nil.

Le parc est disponible dans le fichier concession.swift et le panels de clients ainsi que leur souhait également.

Dans les stocks, les véhicules suivants sont disponibles :

- Véhicules toutes marques possédant la direction assistée et la Radio, CD, MP3, bluetooth
- Véhicules de la marque Peugeot ou Citroën avec navigation GPS
- Le parc assist est disponible uniquement sur la marque Nissan
- Les véhicules avec climatisation sont en rupture de stocks

Il conviendra donc de créer une classe Stock pour gérer les stocks de véhicule avec les options citées ci-avant.

La concession met un point d'honneur à répondre à la demande de ses clients et préfèrera lui indiquer qu'aucune voiture n'est disponible plutôt que lui proposer une voiture/moto où il manque des options.

## Compléter ce TP

Pour ce TP, il est nécessaire de créer la concession automobile, la gestion du parc, des stocks et permettre de rechercher dans le parc les véhicules que le client peut demander.

La recherche dans le stock et dans le parc doit être réalisée avec un subscript avec un retour optionnel.

A la fin de ce TP, il est nécessaire d'afficher les clients qui ont vu leur demande satisfaite et ceux qui n'ont pas pu avoir la voiture de leurs rêves.