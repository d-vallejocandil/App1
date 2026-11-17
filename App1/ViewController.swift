//
//  ViewController.swift
//  App1
//
//  Created by Turno Mananas on 16/11/2026.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    var height_show = 150.0
    var weight_show = 50.0
    @IBOutlet weak var imc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func slider(_ sender: UISlider) {
        height_show = Double(sender.value)
        height.text = "\(Int(height_show))"
    }
    @IBAction func stepper(_ sender: UIStepper) {
        weight_show = sender.value
        weight.text = "\(Int(weight_show))"
    }
    @IBAction func button(_ sender: Any) {
        let imc = weight_show / pow(height_show / 100, 2)
        self.imc.text = String(format: "%.2f", imc)
    }
}
