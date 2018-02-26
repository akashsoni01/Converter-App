//
//  ConverterModel.swift
//  Converter App
//
//  Created by rdec  on 2/26/18.
//  Copyright © 2018 rdec . All rights reserved.
//

import Foundation
class ConverterModel{
    func convertValues(vaule:Double,_ unit1:UnitLength,to unit2:UnitLength) -> Double{
        let value1 = Measurement(value: vaule, unit: unit1)
        return value1.converted(to: unit2).value
    }

}
