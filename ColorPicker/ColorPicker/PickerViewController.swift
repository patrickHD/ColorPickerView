//
//  PickerViewController.swift
//  ColorPicker
//
//  Created by Pat on 4/20/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    let index = 0
    
    var colorList = [
        Color(name: "Red", uiColor: UIColor.red),
        Color(name: "Orange", uiColor: UIColor.orange),
        Color(name: "Yellow", uiColor: UIColor.yellow),
        Color(name: "Green", uiColor: UIColor.green),
        Color(name: "Blue", uiColor: UIColor.blue),
        Color(name: "Purple", uiColor: UIColor.purple),
        Color(name: "Brown", uiColor: UIColor.brown)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        self.view.backgroundColor = colorList[index].uiColor
        colorLabel.text = colorList[index].name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { 
        return colorList[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colorList[row].name
        view.backgroundColor = colorList[row].uiColor
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
