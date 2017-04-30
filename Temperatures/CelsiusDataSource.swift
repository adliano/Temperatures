/*
 Adriano Alves
 Apr 27 2017
 CelsiusDataSource.swift
 Temperatures
 
 CS112 Assignment 12
 this class provida data to Celsius UIPickerView
 
 Copyright © 2017 Adriano Alves. All rights reserved.
 
 */

import UIKit

class CelsiusDataSource : NSObject , UIPickerViewDataSource
{
    let temperatures : [Int] = Array(-50...150)
    
    // MARK: numberOfComponents conforming with UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    // MARK: pickerView conforming with UIPickerViewDataSource
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return temperatures.count
    }
}
