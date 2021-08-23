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
        // Slider
        
        
    }
    @IBAction func redSliderAction() {
        colorDisplayView.backgroundColor = .red
        sliderAction(redSlider, redValueLabel)
    }
    
    @IBAction func greenSliderAction() {
        colorDisplayView.backgroundColor = .green
        sliderAction(greenSlider, greenValueLabel)
    }
    
    @IBAction func blueSliderAction() {
        colorDisplayView.backgroundColor = .blue
        sliderAction(blueSlider, blueValueLabel)
    }
    
    func sliderAction(_ typeOfSlider: UISlider, _ typeOfLabel: UILabel) {
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        colorDisplayView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        typeOfLabel.text = String(format: "%.2f", typeOfSlider.value)
    }
}

