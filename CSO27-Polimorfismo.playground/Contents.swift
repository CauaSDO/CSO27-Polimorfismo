//Polimorfismo

class Animal {
    
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound() {
        print("...")
    }
}


class Dog: Animal {
    
    override func emiteSound() {
        print("Au, au, au")
    }
    
    func run() {
        print("O Cachorro Está Correndo")
    }
}

class Bird: Animal {
    
    let canFly: Bool
    
    func fly() {
        if canFly {
            print("O pássaro está voando")
        } else {
            print("Este pássaro não voa")
        }
        
    }
    
    override func emiteSound() {
        print("🎶 🎶 🎶 🎶")
    }
    
    //Designated Initializer
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    
    //Convenience Initializer
    convenience init(color: String, breed: String) {
        self.init(color: color, gender:"M", breed: breed, canFly: true)
    }
    
}

class Duck: Bird {
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, quack, quack")
    }
}

let billy = Dog(color: "Preto e Branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e Amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maliBird = Bird(color: "Black", breed: "Sabiá")
let donald = Duck(color: "Branco", gender: "M", breed: "Disney")


//1) Desginated Initializer deve chamar outro designated da sua classe base
//2) Um Convinience initialazer da mesma classe
//3) Um Convenience initialazer deve chamar, no final, um designated initialazer


billy.emiteSound()
zeCarioca.emiteSound()

