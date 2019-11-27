//
//  BooksWebViewController.swift
//  SmartShopper
//
//  Created by Megha Mahna on 2019-11-20.
//  Copyright © 2019 meghamahna. All rights reserved.
//

//MARK: - WebKit
import UIKit
import WebKit

class BooksWebViewController: UIViewController, WKNavigationDelegate {

    //MARK: - WKNavigationDelegate
     var bookDelegate: BooksTableViewController?
       var myWebView: WKWebView!
           
           override func loadView() {
               
               myWebView = WKWebView()
               myWebView.navigationDelegate = self
               view = myWebView
               
           }
           
           override func viewDidLoad() {
               super.viewDidLoad()
               
               let url = bookDelegate?.bookData![(bookDelegate?.currentIndex)!].url
               let url1 = URL(string: url!)!
               let request = URLRequest(url: url1)
               
               myWebView.load(request)
               myWebView.allowsBackForwardNavigationGestures = true
           }


}
