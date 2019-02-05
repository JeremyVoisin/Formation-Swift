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
}catch MyCustomError.noStringProvided{
  print("No string provided")
}

```

## Énoncé


## Compléter ce TP
