//
//  ElectronicsWebViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-20.
//  Copyright © 2019 meghamahna. All rights reserved.
//

import UIKit
import WebKit

class ElectronicsWebViewController: UIViewController, WKNavigationDelegate {

    
    var electronicDelegate: ElectronicsTableViewController?
    var myWebView: WKWebView!
        
        override func loadView() {
            
            myWebView = WKWebView()
            myWebView.navigationDelegate = self
            view = myWebView
            
        }
        
    //MARK: - For requesting the URL to open up the page of linked website with WebView
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let url = electronicDelegate?.electronicData![(electronicDelegate?.currentIndex)!].url
            let url1 = URL(string: url!)!
            let request = URLRequest(url: url1)
            
            myWebView.load(request)
            myWebView.allowsBackForwardNavigationGestures = true
        }



}
