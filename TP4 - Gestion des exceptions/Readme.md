# TP 4 - La gestion des erreurs et exceptions

## Introduction


## Outils disponibles

Nous disposons des outils suivants et des outils vus en formation pour réaliser cet exercice

```swift

enum MyCustomError: Error{
  case noStringProvided
}

func myThrowingFunc(_ myProvidedString :String? = nil) throws -> String{
  guard let anyString = myProvidedString else{
    throw MyCustomError.noStringProvided
  }

  return anyString
}

do{
  let ret = try myThrowingFunc("Test")
  print(ret)
}catch MyCustomError.noStringProvided{
  print("No string provided")
}

print(try? myThrowingFunc())
print(try! myThrowingFunc("Test"))
```

## Énoncé

Pour ce TP, nous souhaitons évaluer une chaîne de production de fromagerie qui possède des composants pouvant signaler qu'une partie d'une machine est défaillante.

Aujourd'hui, lorsqu'une machine dysfonctionne, tout le programme de production plante et nécessite d'être redémarré lorsque la machine fautive est réparée.

Pour éviter le désagrément de redémarrer sans cesse le programme. Le chef de production souhaite que nous ajoutions une gestion des problèmes dans sa chaîne de production, lui permettant


## Compléter ce TP
