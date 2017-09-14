//
//  FirstViewController.swift
//  photo-app
//
//  Created by David Ng on 14/9/2017.
//  Copyright © 2017 Skygear. All rights reserved.
//

import UIKit
import SKYKit

class FirstViewController: UIViewController {
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func signupDidPress(_ sender: AnyObject) {
        signup()
    }
    
    @IBAction func loginDidPress(_ sender: AnyObject) {
        login()
    }
    
    func signup() {
        let name: String = self.usernameField.text!
        let password: String = self.passwordField.text!
        
        SKYContainer.default().auth.signup(withUsername: name, password: password) { (user, error) in
            if (error != nil) {
                NSLog(error.debugDescription)
                return
            }
            print("Signed up as: \(user)")
        }
    }
    
    func login() {
        let name: String = self.usernameField.text!
        let password: String = self.passwordField.text!
        
        SKYContainer.default().auth.login(withUsername: name, password: password) { (user, error) in
            if (error != nil) {
                NSLog(error.debugDescription)
                return
            }
            print("Logged in as: \(user)")
        }
    }
}

