//
//  ConverterViewController.swift
//  Converter App
//
//  Created by rdec  on 2/26/18.
//  Copyright © 2018 rdec . All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    
    @IBOutlet weak var _ValueForConversion: UITextField!
    @IBOutlet weak var _ValueConverted: UILabel!
    var fromUnit:String? = "km" {
        didSet{
            performOperation()
        }
    }
    var toUnit:String? = "km" {
        didSet{
            performOperation()
        }
    }
    var valueForConversion:Double?{
        get{
            return Double(_ValueForConversion.text!)
        }
    }
    var valueConverted:Double{
        get{
            return Double(_ValueConverted.text!) ?? 0
        }
        set{
            _ValueConverted.text = "\(newValue)"
        }
    }
    
    @IBAction func ConvewrtValues(_ sender: UIButton) {
        invertColor(with: sender)
    }
    func invertColor(with button:UIButton){
        if(button.backgroundColor != #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)){
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }else{
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    @IBAction func setFrom(_ sender: UIButton) {
        fromUnit = sender.currentTitle
    }
    @IBAction func setTo(_ sender: UIButton) {
        toUnit = sender.currentTitle
    }
    func performOperation(){
        valueConverted = 78
    }
    
}
