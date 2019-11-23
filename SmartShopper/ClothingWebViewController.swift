//
//  ClothingWebViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-19.
//  Copyright © 2019 meghamahna. All rights reserved.
//


//here is webkit package imported for webkit view to make that able to access the websites and to conforms the protocol WKNavigationDelegate
//MARK: - webkit
import UIKit
import WebKit

//MARK: - WKNavigationDelegate
class ClothingWebViewController: UIViewController, WKNavigationDelegate {

     var clothDelegate: ClothingTableViewController?
       var myWebView: WKWebView!
         
         override func loadView() {
             
             myWebView = WKWebView()
             myWebView.navigationDelegate = self
             view = myWebView
             
         }
         
    //in this function constant named url takes the string from the array through delegate and that url goes to URL function as string and store itself in URL1 constant which is further being used for request function to load the request for particular url for the webview.
         override func viewDidLoad() {
             super.viewDidLoad()
             
             let url = clothDelegate?.clothingData![(clothDelegate?.currentIndex)!].url
             let url1 = URL(string: url!)!
             let request = URLRequest(url: url1)
             
             myWebView.load(request)
             myWebView.allowsBackForwardNavigationGestures = true
         }

}
