//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Evgenii on 7/07/2015.
//  Copyright © 2015 Marketplacer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  @IBOutlet weak var pickerView: UIPickerView!
  
  let pickerViewItems = ["Red", "Green", "Yellow", "Black"]

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  // MARK: UIPickerViewDelegate
  // ----------------------
  
  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    if row < pickerViewItems.count {
      return pickerViewItems[row]
    } else {
      return ""
    }
  }
  
  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
  }
  
  // MARK: UIPickerViewDataSource
  // ----------------------
  
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerViewItems.count
  }
}

