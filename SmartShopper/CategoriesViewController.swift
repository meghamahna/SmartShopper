//
//  CategoriesViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-18.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
    
    @IBAction func onMoreTapped(){
        print("toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("navigationMenu"), object: nil)
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
