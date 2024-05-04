//
//  TicTacToe.swift
//  test_1
//
//  Created by astanahub on 22.04.2024.
//

import Foundation

class TicTacToe {
    var arrayXO : [XO] = []
    var isComputer : Bool?
    var counter = 0
    let winCombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6], [1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    init(isComputer: Bool? = nil) {
        self.isComputer = isComputer ?? false
        for _ in 0...8 {
            let XO = XO()
            arrayXO.append(XO)
        }
    }
    
    func cpuTurn() {
        var availableSpots = [Int]()
        for (index, xo) in arrayXO.enumerated() {
            if xo.label == nil {
                availableSpots.append(index)
            }
        }
        if let randomSpot = availableSpots.randomElement() {
            choiceXO(for: randomSpot)
        }
    }
    
    func choiceXO(for index: Int) {
        counter += 1
        if counter%2 != 0 {
            arrayXO[index].label = "❌"
        } else {
            arrayXO[index].label = "⭕️"
        }
    }
    
    func win() -> String? {
        for i in winCombination {
            if arrayXO[i[0]].label == arrayXO[i[1]].label && arrayXO[i[1]].label == arrayXO[i[2]].label && arrayXO[i[0]].label != nil {
                return arrayXO[i[0]].label!
            }
        }
        if counter == 9 {
            return "Draw"
        }
        return nil
    }
}
