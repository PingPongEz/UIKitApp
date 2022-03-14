//
//  ViewController.swift
//  UIKitApp
//
//  Created by u on 13.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var testLabel: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var sliderForLabel: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLabel.font = testLabel.font.withSize(24)
        testLabel.textColor = .orange
        testLabel.textAlignment = .natural
        testLabel.numberOfLines = 3
        
        segmentedControl.selectedSegmentIndex = -1
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        segmentedControl.setTitle("First", forSegmentAt: 0)
        segmentedControl.setTitle("Second", forSegmentAt: 1)
        
        sliderForLabel.minimumValue = 12
        sliderForLabel.maximumValue = 24
        sliderForLabel.value = sliderForLabel.maximumValue
        testLabel.font = testLabel.font.withSize(CGFloat(sliderForLabel.value))
        
    }

    
    @IBAction func segmentedControlSwitch() {
        switch segmentedControlSwitch {
        case 0: testLabel.text = "First one selected"
        case 1: testLabel.text = "Second one selected"
        default: testLabel.text = "Third one selected"
        }
    }
    
    @IBAction func sliderDoingSomething() {
        testLabel.font = testLabel.font.withSize(CGFloat(sliderForLabel.value))
    }
    
}

