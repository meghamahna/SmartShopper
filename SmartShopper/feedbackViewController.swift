//
//  feedbackViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-20.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit

class feedbackViewController: UIViewController {

    var feedback: [String]?
    @IBOutlet weak var feedbackText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        feedback?.append(feedbackText.text!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Provide the functionality to the button
    @IBAction func okButton(_ sender: UIButton) {
         feedback?.append(feedbackText.text!)
        feedbackText.text = nil
        let alertController = UIAlertController(title: "Feedback", message: "Thanks For your Valuable Feedback", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
