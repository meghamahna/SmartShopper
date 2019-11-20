//
//  ViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-18.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickButton: UIButton!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var shoppingImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.isHidden = false
        usernameText.isHidden = false
        passwordLabel.isHidden = false
        passwordText.isHidden = false
        emailLabel.isHidden = true
        emailText.isHidden = true
        loginButton.isHidden = false
        signupButton.isHidden = true
        shoppingImage.isHidden = true
        clickButton.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        let value = sender.selectedSegmentIndex
               if value == 0{
                   usernameLabel.isHidden = false
                   usernameText.isHidden = false
                   passwordLabel.isHidden = false
                   passwordText.isHidden = false
                   emailLabel.isHidden = true
                   emailText.isHidden = true
                   loginButton.isHidden = false
                   signupButton.isHidden = true
                   shoppingImage.isHidden = true
                   clickButton.isHidden = true
               }
               
               else{
                   usernameLabel.isHidden = false
                   usernameText.isHidden = false
                   passwordLabel.isHidden = false
                   passwordText.isHidden = false
                   emailLabel.isHidden = false
                   emailText.isHidden = false
                   loginButton.isHidden = true
                   signupButton.isHidden = false
                   shoppingImage.isHidden = true
                   clickButton.isHidden = true
               }
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if let username = usernameText.text, let password = passwordText.text{
                   for item in customers{
                       if username == item.username && password == item.password{
                           let alertController1 = UIAlertController(title: "Registration", message: "You have been successfully login", preferredStyle: .alert)
                           let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                           usernameLabel.isHidden = true
                           usernameText.isHidden = true
                           passwordLabel.isHidden = true
                           passwordText.isHidden = true
                           emailLabel.isHidden = true
                           emailText.isHidden = true
                           loginButton.isHidden = true
                           signupButton.isHidden = true
                           shoppingImage.isHidden = false
                           segmentControl.isHidden = true
                           clickButton.isHidden = false
                           alertController1.addAction(okAction)
                           self.present(alertController1, animated: true, completion: nil)
                       }
                       else {
                        let alertController = UIAlertController(title: "ALERT", message: "Incorrect Username or Password", preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        alertController.addAction(okAction)
                        self.present(alertController, animated: true, completion: nil)
                        
                        }
                   }
                    usernameText.text = nil
                    passwordText.text = nil
                    emailText.text = nil
                  
            }
    }
    
    @IBAction func signupButton(_ sender: UIButton) {
        if let username = usernameText.text, let password = passwordText.text, let email = emailText.text{
             
            let customer = Customer(username: username, password: password, email: email)
             customers.append(customer)
             
         }
        
         usernameText.text = nil
         passwordText.text = nil
         emailText.text = nil
         
         let alertController = UIAlertController(title: "Registration", message: "You have been successfully Registered", preferredStyle: .alert)
         let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
         alertController.addAction(okAction)
         self.present(alertController, animated: true, completion: nil)
    }
}

