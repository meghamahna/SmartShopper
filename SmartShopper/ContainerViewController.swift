//
//  ContainerViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-18.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var navigationDrawerConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(navigationMenu), name: NSNotification.Name("navigationMenu"), object: nil)

        // Do any additional setup after loading the view.
    }
    
    @objc func navigationMenu(){
        if sideMenuOpen{
            sideMenuOpen = false
            navigationDrawerConstraint.constant = -240
        }
        else{
            sideMenuOpen = true
            navigationDrawerConstraint.constant = 0
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
