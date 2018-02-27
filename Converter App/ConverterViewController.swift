//
//  ConverterViewController.swift
//  Converter App
//
//  Created by rdec  on 2/26/18.
//  Copyright © 2018 rdec . All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    //Outlets for our display and our input source
    @IBOutlet weak var _ValueForConversion: UITextField!
    @IBOutlet weak var _ValueConverted: UILabel!
    
    
    //model for conversion
    var converter = ConverterModel()
    
    
    //defines possible types in measurment type
    var typeOfConverter = "length"    
    var fromUnit:String = "km" {
        didSet{
            performOperation()
        }
    }
    var toUnit:String = "km" {
        didSet{
            performOperation()
        }
    }
    @IBAction func setFrom(_ sender: UIButton) {
        fromUnit = sender.currentTitle!
    }
    @IBAction func setTo(_ sender: UIButton) {
        toUnit = sender.currentTitle!
    }
        func performOperation(){
        valueConverted = converter.convertValues(vaule: valueForConversion!, lengthUnits["\(fromUnit)"]!, to: lengthUnits["\(toUnit)"]!)
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
    
    
    // Mistakes
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
    
    //view didLoad     change in view form our segue identifire




    //changes to be continue....
    var lengthUnits = ["km":UnitLength.kilometers ,"m":UnitLength.meters,"cm":UnitLength.centimeters,"feet":UnitLength.feet,"inch":UnitLength.inches]
    
    //dictonary for our value type
   // var typeOfUits = ["length":UnitLength,"time":UnitTime]
    
}
