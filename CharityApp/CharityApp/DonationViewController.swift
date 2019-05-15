//
//  DonationViewController.swift
//  CharityApp
//
//  Created by Sierra on 3/18/19.
//  Copyright © 2019 King,Sierra M. All rights reserved.
//

import UIKit
import WebKit

class DonationViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = WKWebViewConfiguration()
        let userContentController = WKUserContentController()
        config.userContentController = userContentController
        self.webView = WKWebView(frame: view.frame, configuration: config)
        
        view.addSubview(webView)
        view.addSubview(activityIndicator)
        
        guard let scriptPath = Bundle.main.path(forResource: "hideSections", ofType: "js"),
            let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
        let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        userContentController.addUserScript(userScript)
        
        let urlString: String = "https://dsaofnwi.org/what_you_can_do/donate.html"
        let url: URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        self.webView.load(urlRequest)
        
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
