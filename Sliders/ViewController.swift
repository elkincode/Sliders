//
//  ViewController.swift
//  Sliders
//
//  Created by Иван Элькин on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorDisplayView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorDisplayView.layer.cornerRadius = 10
        
        setColor()
    }
    
    @IBAction func redSliderAction() {
        sliderAction(redSlider, redValueLabel)
    }
    
    @IBAction func greenSliderAction() {
        sliderAction(greenSlider, greenValueLabel)
    }
    
    @IBAction func blueSliderAction() {
        sliderAction(blueSlider, blueValueLabel)
    }
    
    private func sliderAction(_ typeOfSlider: UISlider, _ typeOfLabel: UILabel) {
        
        setColor()
        typeOfLabel.text = String(format: "%.2f", typeOfSlider.value)
    }
    
    private func setColor() {
        colorDisplayView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}

