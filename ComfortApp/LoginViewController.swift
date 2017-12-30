//
//  LoginViewController.swift
//  ComfortApp
//
//  Created by Sam Svindland on 12/28/17.
//  Copyright © 2017 Sam Svindland. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    //MARK:Variables
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    private let defaults = UserDefaults.standard

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if defaults.string(forKey: "email") != nil {
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateInitialViewController()
            DispatchQueue.main.async {
                self.present(vc!, animated: true, completion: nil)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:Action
    @IBAction func signIn(_ sender: UIButton) {
        defaults.set(email.text, forKey: "email")
        defaults.set(password.text, forKey: "password")
        
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (user, error) in
            if error != nil {
                return
            }
        }
        sleep(3) //Give time for firebase.google to respond and create user before attempting login
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateInitialViewController()
        DispatchQueue.main.async {
            self.present(vc!, animated: true, completion: nil)
        }
    }
}
