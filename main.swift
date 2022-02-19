//
//  main.swift
//  Less3
//
//  Created by Александр Борисов on 20.09.2021.
//




//
////MARK: - ENGINE
//enum Engine {
//    case on
//    case off
//}
//
//let actionWithEngine = Engine.on
//func chooseAction(option: Engine) {
//    switch option {
//    case .on:
//        print("Запустить двигатель")
//    case .off:
//        print("Заглушить двигатель")
//    }
//}
////chooseAction(option: actionWithEngine)
////MARK: - WINDOWS
//enum Windows {
//    case open
//    case close
//}
//
//let actionWithWindows = Windows.close
//func chooseAction(option: Windows) {
//    switch option {
//    case .open:
//        print("Открыть окна")
//    case .close:
//        print("Закрыть окна")
//    }
//}
////chooseAction(option: actionWithWindows)
////MARK: - GOODS
//let volume = 50
//enum Goods {
//    case load
//    case unload
//}
//
//let actionWithGoods = Goods.load
//func chooseAction(option: Goods) {
//    switch option {
//
//    case .load:
//        print("Погрузить товар объемом \(volume)")
//    case .unload:
//        print("Выгрузить товар объемом \(volume)")
//
//    }
//}
////chooseAction(option: actionWithGoods)
////MARK: - Структура SportCar
//struct SportCar {
//    let marka: String
//    let yearOfRelease: Int
//    let volumeTrunk: Double
//    let engine: Engine
//    let windows: Windows
//    let filledTrunkVolume: Goods
//
//    func printEngine(){
//        chooseAction(option: actionWithEngine)
//    }
//    func printWindows(){
//            chooseAction(option: actionWithWindows)
//    }
//    func printGoods(){
//            chooseAction(option: actionWithGoods)
//    }
//}
//
//let Car1 = SportCar(marka: "Ferrari", yearOfRelease: 2020, volumeTrunk: 150, engine: Engine.on, windows: Windows.open, filledTrunkVolume: Goods.load)
//
//print(Car1)
//
//Car1.printEngine()
//Car1.printWindows()
//Car1.printGoods()

////MARK: - Структура TrunkCar
//struct TrunkCar {
//    let marka: String
//    let yearOfRelease: Int
//    let volumeTrunk: Double
//    let engine: Optionals
//    let windows: Optionals
//    let filledTrunkVolume: Optionals
//
//    enum Optionals {
//        case engineOn
//        case engineOff
//        case windowsOpen
//        case windowsClose
//        case goodsLoad
//        case goodsUnload
//    }

//    func chooseAction(option: Optionals) {
//        let volume = 50
//
//        switch Optionals {
//        case .engineOn:
//            print("Запустить двигатель")
//        case .engineOff:
//            print("Заглушить двигатель")
//        case .windowsOpen:
//            print("Открыть окна")
//        case .windowsClose:
//            print("Закрыть окна")
//        case .goodsLoad:
//            print("Погрузить товар объемом \(volume)")
//        case .goodsUnload:
//            print("Выгрузить товар объемом \(volume)")
//        }
//    }
//}
//
//let Car2 = TrunkCar(marka: "Scania", yearOfRelease: 2014, volumeTrunk: 6000, engine: Options., windows: option.windowsOpen, filledTrunkVolume: option.goodsLoad)
//
//print(Car2)
import Foundation
print("Hello, World!")



// MARK: - Домашка 3 (СТРУКТУРЫ и ЭНАМЫ)

/*
1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

6. Вывести значения свойств экземпляров в консоль.
*/



enum engineCondition: String {
    case on, off
}

enum windowsCondition: String {
    case open, close
}

enum filledVolumeTrunk: String {
    case load, unload
}

struct SportCar {
    let tradeMark: String
    let yearOfRelease: Int
    let volumeTrunk: Int
    var engine: engineCondition {
        willSet {
            if newValue == .on {
                print("Запустить двигатель")
            } else {
                print("Заглушить двигатель")
            }
        }
    }
    var windows: windowsCondition {
        willSet {
            if newValue == .open {
                print("Открыть окна")
            } else {
                print("Закрыть окна")
            }
        }
    }
    var trunk: filledVolumeTrunk {
        willSet {
            let bag = 50
            let balanceIn = volumeTrunk - bag
            let balanceOut: Int = +(balanceIn + bag)
            if newValue == .load {
                print("Погрузить в багажник груз объемом \(bag) литров, остаток свободного пространства равен \(balanceIn) литров")
            }else{
                print("Выгрузить из багажника груз объемом \(bag) литров, остаток свободного пространства равен \(balanceOut) литров")
            }
        }
    }
}

var Car1 = SportCar(tradeMark: "Ferrari", yearOfRelease: 2021, volumeTrunk: 150, engine: .on, windows: .close, trunk: .load)
print(Car1)

Car1.trunk = .load
Car1.trunk = .unload
Car1.trunk = .load
Car1.engine = .on
Car1.windows = .open



