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
    @IBOutlet weak var outputImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let startRowIndex = tempDataSource.temperatures.count/2
        picker.selectRow(startRowIndex, inComponent: 0, animated: true)
        pickerView(picker, didSelectRow: startRowIndex, inComponent: 0)
    }
    // MARK: dismiss button
    @IBAction func dismiss(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    // MARK: titleForRow , Optional method to set the title for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return String(tempDataSource.temperatures[row]) + " ℉"
    }
    // MARK: didSelectRow , Optional method to get selected row by user
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        let tempInFahrenheit = tempDataSource.temperatures[row]
        celsiusTempOutput.text = model.f2c(℉: tempInFahrenheit) + " ℃"
        outputImage.image = model.getImage(temperatureInFahrenheit: tempInFahrenheit)
    }
}
