//Третье задание
import Foundation
import Cocoa

enum engineState {
    case start, stop
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

struct someCar {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "белый"
        case "black":
            self.color = "черный"
        case "red":
            self.color = "красный"
        case "blue":
            self.color = "синий"
        default:
            print("Ошибка ввода.")
        }
    }
    let release : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand)\(model) багажник пуст: \(space)")
            } else { print("Ошибка ввода \(brand)\(model) багажник полон.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brand)\(model) двигатель включен")
            } else {print("\(brand)\(model) двигатель выключен")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) окна открыты")
            } else { print("\(brand)\(model) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) багажник пуст")
    }
}

struct someTruck {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "белый"
        case "black":
            self.color = "черный"
        case "red":
            self.color = "красный"
        case "blue":
            self.color = "синий"
        default:
            print("Ошибка ввода.")
        }
    }
    let release : Int
    var bodyVolume : Double {
        willSet {
            if (trunkState == .empty) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {
                let space = bodyVolume - newValue
                print ("\(brand)\(model)  багажник пуст: \(space)")
            } else { print("Ошибка ввода \(brand)\(model) багажник полон.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brand)\(model) двигатель включен")
            } else {print("\(brand)\(model) двигатель выключен")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) окна открыты")
            } else { print("\(brand)\(model) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) багажник пуст")
    }
}

var car1 = someCar(brand: "BMW", model: " x6", color: "clear", release: 2016, trunkVolume: 580.0 , engineState: .stop, windowState: .open, trunkState: .empty)
var car2 = someCar(brand: "Lada", model: "Vesta", color: "clear", release: 2017, trunkVolume: 480.0, engineState: .stop, windowState: .close, trunkState: .full)

var truck1 = someTruck(brand: "Mercedes-Benz", model: " AXOR", color: "clear", release: 2012, bodyVolume: 100000.0, engineState: .start, windowState: .open, trunkState: .full)
var truck2 = someTruck(brand: "Mercedes-Benz", model: " Atego", color: "clear", release: 2013, bodyVolume: 150000.0, engineState: .start, windowState: .close, trunkState: .empty)


car1.engineState = .start
car1.trunkVolume = 340.0
car1.changeColor(c: "red")
car2.trunkVolume = 890.0
car2.emptyTrunck()
car2.trunkVolume = 80.9
car2.windowState = .open
car2.changeColor(c: "black")

truck1.engineState = .stop
truck1.windowState = .close
truck2.engineState = .stop
truck2.bodyVolume = 5678908


print ("Информация о первом автомобиле: брэнд и модель: \(car1.brand)\(car1.model), год выпуска: \(car1.release), цвет: \(String(describing: car1.color)), свободное место в багажнике: \(car1.trunkVolume), двигатель \(car1.engineState)")


