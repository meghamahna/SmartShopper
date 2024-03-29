//
//  CategoriesViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-18.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit

//Categories Page containing categories like Clothing, Electronics, Footwear, and Books

class CategoriesViewController: UIViewController {
//MARK: - Weak variables outlets for different image , buttons and labels
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
   
    @IBOutlet weak var clothingButton: UIButton!
    @IBOutlet weak var clothingImage: UIImageView!
    @IBOutlet weak var footwearButton: UIButton!
    @IBOutlet weak var footwearImage: UIButton!
    
    @IBOutlet weak var electronicsButton: UIButton!
    @IBOutlet weak var electronicsImage: UIImageView!
    
    @IBOutlet weak var booksImage: UIImageView!
    
    @IBOutlet weak var booksButton: UIButton!
    
    @IBOutlet weak var clothingLabel: UILabel!
    @IBOutlet weak var footwearLabel: UILabel!
    @IBOutlet weak var electronicsLabel: UILabel!
    @IBOutlet weak var booksLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.systemGreen
        containerView.isHidden = true
        clothingImage.isHidden = false
        clothingLabel.isHidden = false
        clothingButton.isHidden = false
        footwearImage.isHidden = false
        footwearLabel.isHidden = false
        footwearButton.isHidden = false
        electronicsLabel.isHidden = false
        electronicsImage.isHidden = false
        electronicsButton.isHidden = false
        booksImage.isHidden = false
        booksLabel.isHidden = false
        booksButton.isHidden = false
        // Do any additional setup after loading the view.
        
        //MARK: - observers for notification center
        NotificationCenter.default.addObserver(self, selector: #selector(showHome), name: NSNotification.Name("showHome"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showContact), name: NSNotification.Name("showContact"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showFeedback), name: NSNotification.Name("showFeedback"), object: nil)
         NotificationCenter.default.addObserver(self, selector: #selector(showLogout), name: NSNotification.Name("showLogout"), object: nil)
        
        
    }
    //MARK: - onMoreTapped
    @IBAction func onMoreTapped(){
        print("toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("navigationMenu"), object: nil)
    }
   //MARK: - navigation drawer
    //navigation drawer helps the user to navigate to different options according to wish/need the objective type function helps the user to access this functionality with the help of performSegue
   

    @objc func showContact(){
        
        performSegue(withIdentifier: "showContact", sender: nil)
           
    }
    
    @objc func showHome(){
           
           performSegue(withIdentifier: "showHome", sender: nil)
              
       }
    @objc func showFeedback(){
        
        performSegue(withIdentifier: "showFeedback", sender: nil)
              
    }
    
    @objc func showLogout(){
        
        performSegue(withIdentifier: "showLogout", sender: nil)
           
    }
    
    /// segment control function
    /// - Parameter sender: uisegment
    //MARK: - segmentControl
    // this allows the application to appear or disapper the widgets of view as per the value of segment control.
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        let value = sender.selectedSegmentIndex
        if value == 0{
            containerView.isHidden = true
            clothingImage.isHidden = false
            clothingLabel.isHidden = false
            clothingButton.isHidden = false
            footwearImage.isHidden = false
            footwearLabel.isHidden = false
            footwearButton.isHidden = false
            electronicsLabel.isHidden = false
            electronicsImage.isHidden = false
            electronicsButton.isHidden = false
            booksImage.isHidden = false
            booksLabel.isHidden = false
            booksButton.isHidden = false
        }
        
        else if value == 1{
            clothingImage.isHidden = true
            clothingLabel.isHidden = true
            clothingButton.isHidden = true
            footwearImage.isHidden = true
            footwearLabel.isHidden = true
            footwearButton.isHidden = true
            electronicsLabel.isHidden = true
            electronicsImage.isHidden = true
            electronicsButton.isHidden = true
            booksImage.isHidden = true
            booksLabel.isHidden = true
            booksButton.isHidden = true
            containerView.isHidden = false
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
