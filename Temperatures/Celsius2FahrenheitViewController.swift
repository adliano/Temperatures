/*
 Adriano Alves
 Apr 26 2017
 Celsius2FahrenheitViewController.swift
 Temperatures
 
 CS112 Assignment 12
 Create a temperature converter app to convert from Celsius to Fahrenheit,
 and also from Fahrenheit to Celsius.
 It must conform to the MVC design paradigm
 this view controller will handle the celsius to fahrenheit temperature
 
 Copyright © 2017 Adriano Alves. All rights reserved.

 */


import UIKit

class Celsius2FahrenheitViewController: UIViewController , UIPickerViewDelegate
{
    let model = TemperaturesModel()
    @IBOutlet var tempDataSource: CelsiusDataSource!
    @IBOutlet weak var labelTemperatureOutput: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var outputImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let startRowIndex = tempDataSource.temperatures.count/2
        picker.selectRow(startRowIndex, inComponent: 0, animated: true)
        pickerView(picker, didSelectRow: startRowIndex, inComponent: 0)
    }
    // Mark: titleForRow , Optional method from UIPickerViewDelegate to set title on each row of the Picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return String(tempDataSource.temperatures[row]) + " ℃"
    }
    // Mark: didSelectRow , Optional method from UIPickerViewDelegate to get the selecte choice by user on npicker
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        let tempInCelsius = tempDataSource.temperatures[row]
        labelTemperatureOutput.text = String(model.c2f(℃: tempInCelsius)) + " ℉"
        outputImage.image = model.getImage(temperatureInCelsius: tempInCelsius)
    }
}
