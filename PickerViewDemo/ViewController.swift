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
  @IBOutlet weak var currentSelectionLabel: UILabel!
  let pickerViewItems = ["Red", "Green", "Yellow", "Black"]

  override func viewDidLoad() {
    super.viewDidLoad()
    pickerView.dataSource = self
    pickerView.delegate = self
    updateCurrentSelectionLabelText()
  }
  
  private func itemForRow(row: Int) -> String? {
    if row < pickerViewItems.count {
      return pickerViewItems[row]
    } else {
      return ""
    }
  }
  
  private func updateCurrentSelectionLabelText() {
    let seletedRow = pickerView.selectedRowInComponent(0)
    let selectedText = itemForRow(seletedRow) ?? "nothing"
    currentSelectionLabel.text = "Selected: \(selectedText)"
  }
  
  // MARK: UIPickerViewDelegate
  // ----------------------
  
  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return itemForRow(row)
  }
  
  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    updateCurrentSelectionLabelText()
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

