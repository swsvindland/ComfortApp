//
//  StatusViewController.swift
//  ComfortApp
//
//  Created by Sam Svindland on 12/28/17.
//  Copyright © 2017 Sam Svindland. All rights reserved.
//

import UIKit

private var sedn: Bool = false
private var light: Bool = false
private var heavy: Bool = false
private var add: Bool = false
private var remove: Bool = false
private var hMeal: Bool = false
private var cMeal: Bool = false
private var hDrink: Bool = false
private var cDrink: Bool = false

class StatusViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:Action
    @IBAction func sedentary(_ sender: UISwitch) {
        sedn = sender.isOn
    }
    
    @IBAction func lightActivity(_ sender: UISwitch) {
        light = sender.isOn
    }
    
    @IBAction func heavyActivity(_ sender: UISwitch) {
        heavy = sender.isOn
    }
    
    @IBAction func addedClothing(_ sender: UISwitch) {
        add = sender.isOn
    }
    
    @IBAction func removedClothing(_ sender: UISwitch) {
        remove = sender.isOn
    }
    
    @IBAction func hotMeal(_ sender: UISwitch) {
        hMeal = sender.isOn
    }
    
    @IBAction func coldMeal(_ sender: UISwitch) {
        cMeal = sender.isOn
    }
    
    @IBAction func hotDrink(_ sender: UISwitch) {
        hDrink = sender.isOn
    }
    
    @IBAction func coldDrink(_ sender: UISwitch) {
        cDrink = sender.isOn
    }
    
    //MARK: Action-UploadData
    @IBAction func submit(_ sender: UIButton) {
        ViewController().uploadData()
    }
}
