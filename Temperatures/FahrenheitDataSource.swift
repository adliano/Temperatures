//
//  FahrenheitDataSource.swift
//  Temperatures
//
//  Created by Adriano Alves on 4/27/17.
//  Copyright © 2017 Adriano Alves. All rights reserved.
//

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
