//
//  ViewController.swift
//  ComfortApp
//
//  Created by Sam Svindland on 12/26/17.
//  Copyright © 2017 Sam Svindland. All rights reserved.
//

import UIKit
import Firebase

private var location: String = ""
private var temperature: Int = 0
private var ventilation: Int = 0
private var vibration: Int = 0
private var vibrationDuration: Int = 0
private var vibrationDescription: String = ""
private var exposure: Float = 0.0
private var sedentary: Bool = false
private var lightActivity: Bool = false
private var heavyActivity: Bool = false
private var addedClothing: Bool = false
private var removedClothing: Bool = false
private var hotMeal: Bool = false
private var coldMeal: Bool = false
private var hotDrink: Bool = false
private var coldDrink: Bool = false

class ViewController: UIViewController {
    private var ref: DatabaseReference!
    private let defaults = UserDefaults.standard
    private var email: String = ""
    private var password: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        email = String(describing: defaults.value(forKey: "email"))
        password = String(describing: defaults.value(forKey: "password"))
        print(email, password)
        
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                return
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:Segue
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {}
    
    //MARK:Actions
    @IBAction func workstationOne(_ sender: UIButton) {
        location = "Workstation One"
    }
    
    @IBAction func workstationTwo(_ sender: UIButton) {
        location = "Workstation Two"
    }
    
    @IBAction func workstationThree(_ sender: UIButton) {
        location = "Workstation Three"
    }
    
    @IBAction func workstationFour(_ sender: UIButton) {
        location = "Workstation Four"
    }
    
    @IBAction func conferenceRoom(_ sender: UIButton) {
        location = "Conference Room"
    }
    
    func setClimate(temp: Int, vent: Int, vib: Int, vibDur: Int, vibDes: String) {
        temperature = temp
        ventilation = vent
        vibration = vib
        vibrationDuration = vibDur
        vibrationDescription = vibDes
    }
    
    func setExposure(exp: Float) {
        exposure = exp
    }
    
    func setStatus(sedn: Bool, light: Bool, heavy: Bool, add: Bool, remove: Bool, hMeal: Bool, cMeal: Bool, hDrink: Bool, cDrink: Bool) {
        sedentary = sedn
        lightActivity = light
        heavyActivity = heavy
        addedClothing = add
        removedClothing = remove
        hotMeal = hMeal
        coldMeal = cMeal
        hotDrink = hDrink
        coldDrink = cDrink
    }
    
    func uploadData() {
        ref = Database.database().reference()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let dateFormat = formatter.string(from: Date())
        let date = formatter.date(from: dateFormat)
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ssZZZZ"
        let dateString = formatter.string(from: date!)
        
        self.ref.child(dateString).setValue(["location": location, "tempurature": temperature, "ventilation": ventilation, "vibration": vibration, "vibration duration": vibrationDuration, "vibration description": vibrationDescription, "exposure": exposure, "sedentary": sedentary, "light activity": lightActivity, "heavy activity": heavyActivity, "add clothing": addedClothing, "removed clothing": removedClothing, "hot meal": hotMeal, "cold meal": coldMeal, "hot drink": hotDrink, "cold drink": coldDrink, "email": email, "date": dateString])
    }
}

