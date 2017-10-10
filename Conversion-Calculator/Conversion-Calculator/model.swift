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
    
    //Picker data
    var leftData: String = ""
    var middleData: String = ""
    var rightData: String = ""
    
    //Popup convert data
    public var convertData: String = ""
    
    //    var leftPicker :[String]!
    //    var middlePicker :[String]!
    //    var rightPicker :[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        leftPicker = ["0","1","2","3","4","5","6","7","8","9","10"]
        //
        //        middlePicker = ["0","1/4","1/3","1/2","2/3","3/4","5/8"]
        //
        //        rightPicker = ["Tsp", "Tbsp", "Cup", "Pint", "Quart",
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    //Open popup
    @IBAction func showPopup(_ sender: AnyObject) {
        
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: )("sbPopupID") as! PopupViewController
        
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
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
    
    
    //Returns number of rows for picker, --popup is also rightpicker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        //        if (component == 0){
        //            return middlePicker.count
        //        }else {
        //            return leftPicker.count
        //        }else {
        //            return rightPicker.count
        //        }
        return 0
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //Returns data for picker, --popup is also rightpicker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //        if (component == 0){
        //            return middlePicker[row]
        //        }else{
        //            return leftPicker[row]
        //        }else {
        //            return rightPicker[row]
        //        }
        return "none"
}

    }
