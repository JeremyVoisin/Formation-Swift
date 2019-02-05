import Foundation

enum ErreurMachine: Error{
    case ErreurMachineInconnue(String)
}


class Machine{

    let erreurALancer: ErreurMachine
    var isEnPanne = false

    init(_ err: ErreurMachine = .ErreurMachineInconnue("Erreur machine inconnue")){
        erreurALancer = err
    }

    func fonctionner(){
        let randomPanne = Int.random(in: 0 ..< 10)

        switch randomPanne{
            case 0...8:
                isEnPanne = true
                exit(-1)
            case 8...10:
                fallthrough
            default:
                break
        }
    }

    func redemarrer(){
        isEnPanne = false
    }

}

class MachineFermentation: Machine{

}

class MachinePasteurisation: Machine{

}

class MachineEmballage: Machine{

}

class ChaineProduction{

    public func faireFonctionnerChaine() {
        let machine1 = MachineEmballage()
        let machine2 = MachineFermentation()
        let machine3 = MachinePasteurisation()
        while(true){
            machine1.fonctionner()
            machine2.fonctionner()
            machine3.fonctionner()
        }
    }
}