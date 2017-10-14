//
//  ViewController.swift
//  Spalah_hw6_Advanced
//
//  Created by Sergey Gaponov on 10/14/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mixedColorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixedColorView.backgroundColor =
            UIColor(red: 127 / 255,
                    green: 127 / 255,
                    blue: 127 / 255,
                    alpha: 1)
    
//        redLabel.text = String(Int(redSlider.value * 255))
//        greenLabel.text = String(Int(greenSlider.value * 255))
//        blueLabel.text = String(Int(blueSlider.value * 255))
        
        
    }
    
    //    MARK: - Button Action
    @IBAction func minButtonAction(_ sender: Any) {
        
        setLabelBySliderValue(value: 0)
    }
    
    @IBAction func mediumButtonAction(_ sender: Any) {
        setLabelBySliderValue(value: 0.5)
    }
    
    @IBAction func maxButtonAction(_ sender: Any) {
        setLabelBySliderValue(value: 1)
    }
    
    //    MARK: - Slider Action
    @IBAction func redSliderAction(_ sender: Any) {
        setLabelByDifferentSliderValue()
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        setLabelByDifferentSliderValue()
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        setLabelByDifferentSliderValue()
    }
    
     //    MARK: - Self Method
    func setLabelBySliderValue(value: Float) {
        
        redSlider.value = value
        greenSlider.value = value
        blueSlider.value = value
        
        redLabel.text = String(Int(value * 255))
        greenLabel.text = String(Int(value * 255))
        blueLabel.text = String(Int(value * 255))
        
        mixedColorView.backgroundColor =
            UIColor(red: CGFloat(value),
                    green: CGFloat(value),
                    blue: CGFloat(value),
                    alpha: 1)
    }
    
    func setLabelByDifferentSliderValue() {
        
        redLabel.text = String(Int(redSlider.value * 255))
        greenLabel.text = String(Int(greenSlider.value * 255))
        blueLabel.text = String(Int(blueSlider.value * 255))
        
        mixedColorView.backgroundColor =
            UIColor(red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value),
                    alpha: 1)
    }
    
}

