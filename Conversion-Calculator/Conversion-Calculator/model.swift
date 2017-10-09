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
        
        //DO CONVERSION THINGS
        
        conversionLabel.text = "I converted things!"
        
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
