//
//  ExposureViewController.swift
//  ComfortApp
//
//  Created by Sam Svindland on 12/28/17.
//  Copyright © 2017 Sam Svindland. All rights reserved.
//

import UIKit

private var exposure: Float = 0

class ExposureViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:Action
    @IBAction func exposure01(_ sender: UIButton) {
        exposure = 0.1
    }
    
    @IBAction func exposure02(_ sender: UIButton) {
        exposure = 0.2
    }
    
    @IBAction func exposure03(_ sender: UIButton) {
        exposure = 0.3
    }
    
    @IBAction func exposure05(_ sender: UIButton) {
        exposure = 0.5
    }
    
    @IBAction func exposure08(_ sender: UIButton) {
        exposure = 0.8
    }
    
    @IBAction func exposure10(_ sender: UIButton) {
        exposure = 1.0
    }
    
    @IBAction func exposure15(_ sender: UIButton) {
        exposure = 1.5
    }
    
    @IBAction func exposure30(_ sender: UIButton) {
        exposure = 3.0
    }
}
