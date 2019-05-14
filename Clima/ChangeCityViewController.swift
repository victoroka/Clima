//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate: ChangeCityDelegate?
    
    // Pre-linked IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!
    
    // The IBAction that gets called when the user taps on the "Get Weather" button:
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        let cityName = changeCityTextField.text!
        
        // If we have a delegate set, call the method userEnteredANewCityName
        delegate?.userEnteredANewCityName(city: cityName)
        self.dismiss(animated: true, completion: nil)
    }
    
    

    // The IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
