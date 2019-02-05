# TP 3.1 - La promotion

## Introduction

Dans ce TP, nous allons explorer le développement objet en Swift

## Outils disponibles

Nous disposons des outils suivants, ainsi que des outils abordés jusqu'à maintenant pour réaliser ce TP

```swift

//Déclaration d'une variable lazy
lazy var myVar = HugeClass()

//Déclaration d'une propriété de type
static var myVar = 10

//Déclaration d'un modificateur d'accès
private var myVar = 10

//Déclaration d'une classe
class Vehicule{

}

//Déclaration d'un enum
enum Vehicule{

}

//Déclaration d'une structure
struct Vehicule{

}
```
## Énoncé

L'objectif du TP est de classer des étudiants dans les promotions de différentes sections, en fonction de leur souhait d'orientation et des critères suivants :

- La promotion contenant la section scientifique est limitée à 4 places, et nécessite une note minimum de 14/20
- La promotion contenant la section economie n'est pas limitée en place et peut accueillir des étudiants de tout horizon mais demande une note minimum de 16/20
- La promotion contenant la section littéraire est limitée à 10 places et peut accueillir des étudiants de tout horizon
- Il est acceptable de placer au maximum 4 étudiants dans des sections qu'ils n'ont pas souhaité

Considérons la promotion donnée dans le fichier promotion.swift, ce fichier est constitué d'une liste de tuples avec des arguments nommés, à savoir le nom de l'étudiant, son souhait de section et sa note. Il est nécessaire de créer une classe de chargement de cette liste non structurée pour en créer des instances de classes. Pour ce TP, il faudra respecter les contraintes suivantes :


- Une classe de chargement des étudiants est nécessaire avec un initializer qui commence par un appel à **sleep(4)**
- Une classe/structure/enum Personne, Etudiant, Professeur, Promotion, Section, Loader
- Il est nécessaire de pouvoir, à tout moment, afficher les promotions d'étudiants en fonction de leur section
- Il faut pouvoir rechercher un étudiant par son nom et sa section
- La fonction d'acceptation dans une Section est une closure qui est passée en paramètre à l'initialisation

## Compléter ce TP

Pour compléter ce TP, il faut avoir créé toutes les classes et leurs propriétés/methodes, il faut avoir répartit les élèves dans les classes par section de leur choix et selon leur respect des critères d'entrée. Il faudra également ressortir les étudiants n'ayant pas de promotion d'accueil. L'utilisateur devra pouvoir rechercher des étudiants et afficher les promotions.