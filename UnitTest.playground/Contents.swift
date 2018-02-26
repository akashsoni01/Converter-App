//: Playground - noun: a place where people can play

import Foundation
print("helo world")
func convertValues(vaule:Double,_ unit1:UnitLength,to unit2:UnitLength) -> Double{
    let value1 = Measurement(value: vaule, unit: unit1)
    return value1.converted(to: unit2).value
}

    var conversionUnits = ["km":UnitLength.kilometers ,"m":UnitLength.meters]

print(convertValues(vaule: 1, conversionUnits["km"]!, to: conversionUnits["m"]!))






UnitLength.