//
//  ViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-18.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // Audio is played when user succesfully login the account
    var audioPlayer: AVAudioPlayer!
    let sounds = ["Entire"]
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
    
    
    /// view did load function
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
    
    //Functionality of Login Button
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
                            let select = sounds[sender.tag]
                            let soundURL = Bundle.main.url(forResource: select, withExtension: "wav")
                            audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
                            audioPlayer.play()
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
    
    
    func isemailvalidate(emailAdd : String) -> Bool {
        guard emailAdd != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: emailAdd)
        
        
        
    }
    //MARK: - Sign up button functionality and alert controller for sign up
    @IBAction func signupButton(_ sender: UIButton) {
        if let username = usernameText.text, let password = passwordText.text, let email = emailText.text{
            if isemailvalidate(emailAdd: email) {
            let customer = Customer(username: username, password: password, email: email)
             customers.append(customer)
            
            let alertController = UIAlertController(title: "Registration", message: "You have been successfully Registered", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(okAction)
                    self.present(alertController, animated: true, completion: nil)
            
            usernameText.text = nil
                    passwordText.text = nil
                    emailText.text = nil
         }
            else{
                let alertController = UIAlertController(title: "Registration", message: "You have not entered email correctly", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            }
        
        }
        
    }
    
    
    
    
    
}

