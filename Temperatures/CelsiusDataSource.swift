//
//  CelsiusDataSource.swift
//  Temperatures
//
//  Created by Adriano Alves on 4/27/17.
//  Copyright © 2017 Adriano Alves. All rights reserved.
//

import UIKit

class CelsiusDataSource : NSObject , UIPickerViewDataSource
{
    let temperetures : [Int] = Array(-50...150)
    
    // MARK: numberOfComponents conforming with UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    // MARK: pickerView conforming with UIPickerViewDataSource
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return temperetures.count
    }
}
