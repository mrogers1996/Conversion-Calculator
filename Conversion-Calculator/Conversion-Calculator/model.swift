//
//  model.swift
//  Conversion-Calculator
//
//  Created by Adam Teller on 10/3/17.
//  Copyright © 2017 Mandy Rogers. All rights reserved.
//

import Foundation
import UIKit

class PopupViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var pickerUnit: UIPickerView!
    @IBOutlet weak var conversionLabel: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    
    //Picker data
    var leftData: String = ""
    var middleData: String = ""
    var rightData: String = ""
    
    //Popup convert data
    public var convertData: String = ""
    
        var leftPicker :[String]!
        var middlePicker :[String]!
        var rightPicker :[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
                leftPicker = ["0","1","2","3","4","5","6","7","8","9","10"]
                middlePicker = ["0","1/4","1/3","1/2","2/3","3/4","5/8"]
                rightPicker = ["Tsp", "Tbsp", "Cup", "Pint", "Quart"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Open popup
    @IBAction func showPopup(_ sender: AnyObject) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: )("sbPopupID") as! PopupViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func segmentChange(_ sender: Any) {
        let index = (sender as AnyObject).selectedSegmentIndex
        
        if (index == 0){
            leftPicker = ["0","1","2","3","4","5","6","7","8","9","10"]
            middlePicker = ["0","1/4","1/3","1/2","2/3","3/4","5/8"]
            rightPicker = ["Tsp", "Tbsp", "Cup", "Pint", "Quart"]

        }else if (index == 1){
            leftPicker = ["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"]
            middlePicker = ["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"]
            rightPicker = ["Celsius", "Farenheit"]
        

        }
    }
    
    
    //Close popup
    @IBAction func closePopup(_ sender: AnyObject) {
        self.view.removeFromSuperview()
    }
    
    //Title box for end conversion when convert is clicked
    @IBAction func convertThings(_ sender: Any) {
        
        let leftInt = Int(leftData)
        let middleInt = Int(middleData)
        
        let initialData = leftInt! + middleInt!

        
        //DO CONVERSION THINGS
        if middleData == convertData {
            conversionLabel.text = "Same unit has been selected"
        } else {
            if middleData == "Tsp" {
                if convertData == "Tbsp" {
                    conversionLabel.text = String(initialData / 3)
                } else if convertData == "Cup" {
                    conversionLabel.text = String(initialData / (1/48))
                } else if convertData == "Pint" {
                    conversionLabel.text = String(initialData / (1/100))
                } else if convertData == "Quart" {
                    conversionLabel.text = String(initialData / (1/200))
                }
            } else if middleData == "Tbsp" {
                if convertData == "Tsp" {
                    conversionLabel.text = String(initialData * 3)
                } else if convertData == "Cup" {
                    conversionLabel.text = String(initialData * (5/8))
                } else if convertData == "Pint" {
                    conversionLabel.text = String(initialData * 32)
                } else if convertData == "Quart" {
                    conversionLabel.text = String(initialData * (17/64))
                }
            } else if middleData == "Cup" {
                if convertData == "Tbsp" {
                    conversionLabel.text = String(initialData / (5/8))
                } else if convertData == "Tsp" {
                    conversionLabel.text = String(initialData * (1/48))
                } else if convertData == "Pint" {
                    conversionLabel.text = String(initialData * 4)
                } else if convertData == "Quart" {
                    conversionLabel.text = String(initialData * (1/4))
                }
            } else if middleData == "Pint" {
                if convertData == "Tbsp" {
                    conversionLabel.text = String(initialData / 32)
                } else if convertData == "Tsp" {
                    conversionLabel.text = String(initialData * (1/100))
                } else if convertData == "Cup" {
                    conversionLabel.text = String(initialData / 4)
                } else if convertData == "Quart" {
                    conversionLabel.text = String(initialData * (1/2))
                }
            } else if middleData == "Quart" {
                if convertData == "Tbsp" {
                    conversionLabel.text = String(initialData / (17/64))
                } else if convertData == "Tsp" {
                    conversionLabel.text = String(initialData * (1/200))
                } else if convertData == "Cup" {
                    conversionLabel.text = String(initialData / (1/4))
                } else if convertData == "Pint" {
                    conversionLabel.text = String(initialData / (1/2))
                }
            } else if middleData == "Farenheit" {
                if convertData == "Celsius" {
                    conversionLabel.text = String((initialData - 32) * (5/9))
                }
            } else if middleData == "Celsius" {
                if convertData == "Farenheit" {
                    conversionLabel.text = String((initialData/(5/9)) + 32)
                }
            }
        }
        
        
        
    }
    
    @IBAction func segmentControlChange(_ sender: Any) {
        picker.reloadAllComponents()
    }
    
    //Returns number of rows for picker, --popup is also rightpicker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
                if (component == 1){
                    return middlePicker.count
                }else if (component == 0){
                    return leftPicker.count
                }else {
                    return rightPicker.count
                }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    //Returns data for picker, --popup is also rightpicker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                if (component == 1){
                    return self.middlePicker[row]
                }else if (component == 0){
                    return self.leftPicker[row]
                }else {
                    return self.rightPicker[row]
                }
}

    }
