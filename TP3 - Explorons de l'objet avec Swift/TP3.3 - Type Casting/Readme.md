# TP 3.3 - Le Type Casting

## Introduction

Au travers de ce TP, nous étudierons l'usage du TypeCasting.

## Outils disponibles

Nous disposons des outils suivants et outils vus en formation pour réaliser cet exercice :

```swift
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    default:
        print("something else")
    }
}
```

## Énoncé

Pour ce TP, nous allons créer un système réactif des entrées utilisateur sous forme d'un petit jeu où l'utilisateur pourra déplacer un token dans une carte 2D, d'un point de départ à un point d'arrivée.

Dans ce jeu, l'utilisateur aura le choix en début de partie de choisir son jeu d'instructions pour le déplacement :

- Si l'utilisateur veut se déplacer avec des Int, il se déplacera en entrant les nombres 0,1,2,3 pour Nord, Ouest, Sud, Est
- Si il choisi les caractères, il utilisera simplement N,O,S,E
- Si il choisi les doubles, il aura 1.5,2.5,3.5,4.5

Le petit jeu est simple et se découpe dans les phases suivantes :

- Proposer à l'utilisateur le token qu'il choisi
- Générer aléatoirement, sur une carte 2D de 10x10, un point de départ et d'arrivée
- Positionner le token du joueur sur la case de départ
- Afficher la carte courante
- Demander un déplacement au joueur
- Déplacer le token du joueur en fonction du TypeCasting réalisé
- Si arrivé sur la case d'arrivée alors fin du jeu, sinon reprendre à l'étape d'affichage de la carte

## Compléter ce TP

Pour compléter ce TP, il est nécessaire d'avoir implémenté les comportements réactifs aux entrées de l'utilisateur.