//
//  ViewController.swift
//  User-Defaults-Demo
//
//  Created by mohamdan on 16/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var muteSwitch: UIView!
    @IBOutlet weak var levelSlider: UISlider!
    @IBOutlet weak var speakerSegment: UISegmentedControl!
    @IBOutlet weak var modeSegment: UISegmentedControl!
    
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        muteSwitch.isUserInteractionEnabled = defaults.bool(forKey: "muteSwitch")
        levelSlider.value = Float(defaults.double(forKey: "levelSlider"))
        speakerSegment.selectedSegmentIndex = defaults.integer(forKey: "speakerSegment")
        modeSegment.selectedSegmentIndex = defaults.integer(forKey: "modeSegment")
    }

    
    @IBAction func modeChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==0{
            view.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
        }else{
            view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        defaults.set(muteSwitch.isUserInteractionEnabled, forKey: "muteSwitch")
        defaults.set(levelSlider.value, forKey: "levelSlider")
        defaults.set(speakerSegment.selectedSegmentIndex, forKey: "speakerSegment")
        defaults.set(modeSegment.selectedSegmentIndex, forKey: "modeSegment")
    }
}

