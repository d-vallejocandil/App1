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
    @IBOutlet weak var imc_desc: UILabel!
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
        switch imc {
        case 0..<18.5:
            imc_desc.text = "Bajo peso"
            imc_desc.textColor = UIColor.regular
        case 18.5..<25:
            imc_desc.text = "Peso normal"
            imc_desc.textColor = UIColor.bien
        case 25..<30:
            imc_desc.text = "Sobrepeso"
            imc_desc.textColor = UIColor.regular
        default:
            imc_desc.text = "Obesidad"
            imc_desc.textColor = UIColor.mal
        }
    }
}
