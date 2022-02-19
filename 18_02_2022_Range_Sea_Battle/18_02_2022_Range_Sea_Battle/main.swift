//
//  main.swift
//  18_02_2022_Range_Sea_Battle
//
//  Created by Александр Борисов on 18.02.2022.
//

import Foundation

//MARK: - Sea Battle

var k = 3.0
var k1 = 3.0
var k2 = 6.0
var k3 = 9.0
var k4 = 7.0
var k5 = 7.0
var k6 = 5.0
var k7 = 9.0
print("Введите количество выстрелов: ")
let n = Int(readLine()!)
for i in 1...n! {
    var coordinates = (2.5, 3.5)
    print("Введите координаты", i, "-го выстрела. Горизонталь - Вертикаль")
    let c1 = readLine()!
    let c2 = readLine()!

    coordinates = (Double(c1)!, Double(c2)!)
    switch coordinates {
    case (3.0...6.0, k...k1):
        print("Потоплен 1-й корабль")
        k = 0
        k1 = 0
    case (2.0...2.0, k2...k3):
        print("Потоплен 2-й корабль")
        k2 = 0
        k3 = 0
    case (4.0...7.0, k4...k5):
        print("Потоплен 3-й корабль")
        k4 = 0
        k5 = 0
    case (9.0...9.0, k6...k7):
        print("Потоплен 4-й корабль")
        k6 = 0
        k7 = 0
    default: print("Промах!\n")
    }
}
