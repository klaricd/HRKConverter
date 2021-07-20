//
//  ViewController.swift
//  HRKConverter
//
//  Created by David Klaric on 21.04.2021..
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var amountToConvert: UITextField!
    @IBOutlet weak var amountEUR: UITextField!
    @IBOutlet weak var amountUSD: UITextField!
    @IBOutlet weak var amountJPY: UITextField!
    @IBOutlet weak var amountGBP: UITextField!
    @IBOutlet weak var amountCAD: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "HRK Converter"
    }
    
    @IBAction func convertButton(_ sender: Any) {
        if let amount = Double(amountToConvert.text!) {
            amountEUR.text = String(format: "%.2f", amount / 7.54) + " EUR 🇪🇺"
            amountUSD.text = String(format: "%.2f", amount / 6.27) + " USD 🇺🇸"
            amountJPY.text = String(format: "%.2f", amount / 0.05) + " JPY 🇯🇵"
            amountGBP.text = String(format: "%.2f", amount / 8.69) + " GBP 🇬🇧"
            amountCAD.text = String(format: "%.2f", amount / 5.09) + " CAD 🇨🇦"
        } else {
            let alert = UIAlertController(title: "Amount is empty!", message: "Please insert the amount to convert.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        
    }
    
    @IBAction func refreshButton(_ sender: Any) {
        self.amountToConvert.text = nil
        self.amountEUR.text = nil
        self.amountUSD.text = nil
        self.amountJPY.text = nil
        self.amountGBP.text = nil
        self.amountCAD.text = nil
    }
    
}
