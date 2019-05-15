//
//  Events_ViewController.swift
//  CharityApp
//
//  Created by Francis,Dalton J on 2/26/19.
//  Copyright © 2019 King,Sierra M. All rights reserved.
//

import UIKit
import WebKit
import SwiftSoup


class Events_ViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString: String = "https://dsaofnwi.org/news_events/event_calendar.html"
        let url: URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        let config = WKWebViewConfiguration()
        let userContentController = WKUserContentController()
        config.userContentController = userContentController
        self.webView = WKWebView(frame: view.frame, configuration: config)
        
        view.addSubview(webView)
        view.addSubview(activityIndicator)
        
        guard let scriptPath = Bundle.main.path(forResource: "eventsHideSections", ofType: "js"),
            let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
        let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        userContentController.addUserScript(userScript)

        self.webView.load(urlRequest)
        self.webView.scrollView.contentInset = UIEdgeInsets.init(top: 0, left: -50, bottom: 0, right: -90)
        self.webView.scrollView.bounces = false;
        self.webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading" {
            if webView.isLoading {
                activityIndicator.startAnimating()
                activityIndicator.isHidden = false
            } else {
                activityIndicator.stopAnimating()
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }  
}
