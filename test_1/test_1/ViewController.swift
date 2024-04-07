//
//  ViewController.swift
//  test_1
//
//  Created by astanahub on 20.04.2024.
//

import UIKit


class ViewController: UIViewController {
   
    var game = TicTacToe()
    @IBOutlet var arrayButton: [UIButton]!

    @IBOutlet weak var winLabel: UILabel!

    @IBAction func Restart(_ sender: UIButton) {
        for i in arrayButton {
            i.setTitle("", for: .normal)
            i.isEnabled = true
        }
        winLabel.text = ""
        let isComputer = game.isComputer
        game = TicTacToe(isComputer: isComputer)
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        guard let index = arrayButton.firstIndex(of: sender) else {
            return
        }
        game.choiceXO(for: index)
        if game.isComputer! {
                game.cpuTurn()
            }
        updateView()
    }
    
    func updateView() {
        for i in arrayButton.indices {
            let button = arrayButton[i]
            let XO = game.arrayXO[i]
            if let label = XO.label {
                button.setTitle(label, for: .normal)
                button.isEnabled = false
            }
            if let win = game.win() {
                if (win == "Draw") {
                    winLabel.text = "Draw!"
                } else {
                    winLabel.text = "Winner \(win)"
                }
                for i in arrayButton {
                    i.isEnabled = false
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

