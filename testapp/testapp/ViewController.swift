//
//  ViewController.swift
//  testapp
//
//  Created by Saruar Shamshiyev on 17.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    //    @IBOutlet var helloLabel: [UILabel]!
    @IBAction func buttonClick(_ sender: UIButton) {
        helloLabel.text = helloLabel.text == "" ? "Hello World" : ""
    }
    @IBAction func stepper(_ sender: UIStepper) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

