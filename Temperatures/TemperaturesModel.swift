//
//  TemperaturesModel.swift
//  Temperatures
//
//  Created by Adriano Alves on 4/27/17.
//  Copyright © 2017 Adriano Alves. All rights reserved.
//

import Foundation

class TemperaturesModel
{
    // Mark: c2f Method to get a celsius temp input and return a fahrenheit value
    func c2f(℃ : Int) -> String
    {
        return String(Double(℃) * 1.8 + 32)
    }
    // Mark: f2c Method that get a fahrenheit temp input and return a celsius value
    func f2c(℉ : Int) -> String
    {
        return String((℉ - 32) * 5 / 9)
    }
}
