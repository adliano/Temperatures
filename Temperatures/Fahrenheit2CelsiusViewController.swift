/*
 Adriano Alves
 Apr 26 2017
 Fahrenheit2CelsiusViewController.swift
 Temperatures
 
 CS112 Assignment 12
 Create a temperature converter app to convert from Celsius to Fahrenheit,
 and also from Fahrenheit to Celsius.
 It must conform to the MVC design paradigm
 this view controller will handle the fahrenheit to celsius temperature
 
 Copyright © 2017 Adriano Alves. All rights reserved.
 
 */


import UIKit

class Fahrenheit2CelsiusViewController: UIViewController, UIPickerViewDelegate
{
    let model = TemperaturesModel()
    @IBOutlet weak var celsiusTempOutput: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet var tempDataSource: FahrenheitDataSource!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        pickerView(picker, didSelectRow: 0, inComponent: 0)
    }

    @IBAction func dismiss(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return String(tempDataSource.temperatures[row]) + " ℉"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        celsiusTempOutput.text = model.f2c(℉: tempDataSource.temperatures[row]) + " ℃"
    }
}
