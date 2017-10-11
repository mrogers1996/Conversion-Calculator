//
//  ViewController.swift
//  Conversion-Calculator
//
//  Created by Mandy Rogers on 10/3/17.
//  Copyright © 2017 Mandy Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return leftPicker.count
    }
    

   
    
    let  leftPicker = ["0","1","2","3","4","5","6","7","8","9","10"]
    let middlePicker = ["0","1/4","1/3","1/2","2/3","3/4","5/8"]
    let rightPicker = ["Tsp", "Tbsp", "Cup", "Pint", "Quart"]
   
    override func viewDidLoad() {
//        self.picker.delegate = self
//        self.picker.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

