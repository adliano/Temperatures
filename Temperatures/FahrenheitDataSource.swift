/*
 Adriano Alves
 Apr 27 2017
 FahrenheitDataSource.swift
 Temperatures
 
 CS112 Assignment 12
 this class provida data to Fahrenheit UIPickerView
 
 Copyright © 2017 Adriano Alves. All rights reserved.
 
 */

import UIKit

class FahrenheitDataSource : NSObject, UIPickerViewDataSource
{
    let temperatures : [Int] = Array(0...250)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return temperatures.count
    }
}
