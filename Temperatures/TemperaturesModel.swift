/*
 Adriano Alves
 Apr 27 2017
 TemperaturesModel.swift
 Temperatures
 
 CS112 Assignment 12
 Model class with usefull methods

 Copyright © 2017 Adriano Alves. All rights reserved.

 */

import UIKit

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
        return String(format : "%.1f", (Double(℉) - 32) / 1.8 )
    }
    // Mark: getImage , argumet temperatureInCelsius
    func getImage(temperatureInCelsius : Int) ->  UIImage
    {
        if temperatureInCelsius < 0
        {
            return #imageLiteral(resourceName: "ice")
        }
        else if temperatureInCelsius < 101
        {
            return #imageLiteral(resourceName: "water")
        }
        else
        {
            return #imageLiteral(resourceName: "boiling")
        }
    }
    // Mark: getImage , argumet temperatureInFahrenheit
    func getImage(temperatureInFahrenheit : Int) ->  UIImage
    {
        if temperatureInFahrenheit < 32
        {
            return #imageLiteral(resourceName: "ice")
        }
        else if temperatureInFahrenheit <= 212
        {
            return #imageLiteral(resourceName: "water")
        }
        else
        {
        return #imageLiteral(resourceName: "boiling")
        }
    }
}
