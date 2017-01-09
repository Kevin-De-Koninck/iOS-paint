//
//  DrawingVC.swift
//  TWTA
//
//  Created by Kevin De Koninck on 06/01/2017.
//  Copyright © 2017 Kevin De Koninck. All rights reserved.
//

import UIKit

class DrawingVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var colorPickerView: UIPickerView!
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var eraserBtn: menuButton!
    @IBOutlet var drawView: drawView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    
    var colors: [String] = ["Black", "Blue", "Green", "Red", "Yellow", "Orange"]

    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorPickerView.delegate = self
        self.colorPickerView.dataSource = self
        
        self.settingsView.isHidden = true
        self.colorPickerView.isHidden = true
        self.widthSlider.isHidden = true
        self.eraserBtn.isHidden = true
        self.blurView.isHidden = true
        
    }


    
    @IBAction func editBarBtn(_ sender: Any) {
        editor(show: true)
    }
    
    @IBAction func resetBarBtn(_ sender: UIBarButtonItem) {
        let theDrawView = drawView as drawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    }
    
    @IBAction func eraserBtnClicked(_ sender: UIButton) {
        drawView.drawColor = UIColor.white
        editor(show: false)
    }
    

    @IBAction func colorSliderValueChanged(_ sender: UISlider) {
        drawView.lineWidth = CGFloat(sender.value * 100)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorSelection(color: colors[row])
        editor(show: false)
    }
    
    
    func colorSelection(color: String) {
        var colorSet: UIColor!
        
        switch color {
            case "Black":   colorSet = UIColor.black
            case "Blue":    colorSet = UIColor.blue
            case "Green":   colorSet = UIColor.green
            case "Red":     colorSet = UIColor.red
            case "Yellow":  colorSet = UIColor.yellow
            case "Orange":  colorSet = UIColor.orange
            default:        colorSet = UIColor.white
        }
        
        editor(show: true)
        drawView.drawColor = colorSet
    }
    
    func editor(show: Bool) {
        self.settingsView.isHidden = !show
        self.colorPickerView.isHidden = !show
        self.widthSlider.isHidden = !show
        self.eraserBtn.isHidden = !show
        
        self.blurView.isHidden = !show
    }
    
}
