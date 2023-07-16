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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func modeSelect(_ sender: Any) {
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
    }
}

