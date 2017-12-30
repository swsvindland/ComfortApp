//
//  ClimateViewController.swift
//  ComfortApp
//
//  Created by Sam Svindland on 12/28/17.
//  Copyright © 2017 Sam Svindland. All rights reserved.
//

import UIKit

private var temp: Int = 0
private var vent: Int = 0
private var vib: Int = 0
private var vibDur: Int = 0
private var vibDes: String = ""

class ClimateViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:Action
    @IBAction func temperature(_ sender: UISlider) {
        temp = Int(sender.value)
    }
    
    @IBAction func ventilation(_ sender: UISlider) {
        vent = Int(sender.value)
    }
    
    @IBAction func vibration(_ sender: UISlider) {
        vib = Int(sender.value)
    }
    
    @IBAction func vibrationDuration(_ sender: UISlider) {
        vibDur = Int(sender.value)
    }
    
    @IBAction func vibrationDescription(_ sender: UITextField) {
        vibDes = String(describing: sender.text)
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        ViewController().setClimate(temp: temp, vent: vent, vib: vib, vibDur: vibDur, vibDes: vibDes)
    }
}

