//
//  ClothingWebViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-19.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit
import WebKit

class ClothingWebViewController: UIViewController, WKNavigationDelegate {

     var clothDelegate: ClothingTableViewController?
       var myWebView: WKWebView!
         
         override func loadView() {
             
             myWebView = WKWebView()
             myWebView.navigationDelegate = self
             view = myWebView
             
         }
         
         override func viewDidLoad() {
             super.viewDidLoad()
             
             let url = clothDelegate?.clothingData![(clothDelegate?.currentIndex)!].url
             let url1 = URL(string: url!)!
             let request = URLRequest(url: url1)
             
             myWebView.load(request)
             myWebView.allowsBackForwardNavigationGestures = true
         }

}
