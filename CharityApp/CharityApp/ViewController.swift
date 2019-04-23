//
//  ViewController.swift
//  CharityApp
//
//  Created by King,Sierra M on 2/26/19.
//  Copyright © 2019 King,Sierra M. All rights reserved.
//

import UIKit
import SwiftSoup
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var welcomeParaLabel: UILabel!
    @IBOutlet weak var welcomeParaText: UITextView!
    @IBOutlet var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        var number = Int.random(in: 1 ... 2)
        //var number = Int(arc4random_uniform(2))
        
        if number == 1 {
        let urlString: String = "https://dsaofnwi.org/who_we_are/mission.html"
        let url: URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
       
        let config = WKWebViewConfiguration()
        let userContentController = WKUserContentController()
        config.userContentController = userContentController
        self.webView = WKWebView(frame: view.frame, configuration: config)
        
        view.addSubview(webView)
        
        guard let scriptPath = Bundle.main.path(forResource: "StartPageHideSections", ofType: "js"),
            let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
        let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        userContentController.addUserScript(userScript)
         self.webView.load(urlRequest)
        self.webView.scrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -130)
        self.webView.scrollView.bounces = false;
        }
        
        if number == 2 {
            let urlString: String = "https://dsaofnwi.org/who_we_are/what-is-down-syndrome.html"
            let url: URL = URL(string: urlString)!
            let urlRequest: URLRequest = URLRequest(url: url)
            
            let config = WKWebViewConfiguration()
            let userContentController = WKUserContentController()
            config.userContentController = userContentController
            self.webView = WKWebView(frame: view.frame, configuration: config)
            
            view.addSubview(webView)
            
            guard let scriptPath = Bundle.main.path(forResource: "StartPageHideSections", ofType: "js"),
                let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
            let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
            userContentController.addUserScript(userScript)
            self.webView.load(urlRequest)
            self.webView.scrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -130)
            self.webView.scrollView.bounces = false;
            
        }
        
        if number == 3 {
            
            let urlString: String = "https://dsaofnwi.org/news_events/newsletters.html"
            let url: URL = URL(string: urlString)!
            let urlRequest: URLRequest = URLRequest(url: url)
            
            let config = WKWebViewConfiguration()
            let userContentController = WKUserContentController()
            config.userContentController = userContentController
            self.webView = WKWebView(frame: view.frame, configuration: config)
            
            view.addSubview(webView)
            
            guard let scriptPath = Bundle.main.path(forResource: "StartPageHideSections2", ofType: "js"),
                let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
            let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
            userContentController.addUserScript(userScript)
            self.webView.load(urlRequest)
            self.webView.scrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
            self.webView.scrollView.bounces = false;
            
        }
        
        if number == 4 {
            
            let urlString: String = "https://dsaofnwi.org/our-stories/freddy-benichs-story.html"
            let url: URL = URL(string: urlString)!
            let urlRequest: URLRequest = URLRequest(url: url)
            
            let config = WKWebViewConfiguration()
            let userContentController = WKUserContentController()
            config.userContentController = userContentController
            self.webView = WKWebView(frame: view.frame, configuration: config)
            
            view.addSubview(webView)
            
            guard let scriptPath = Bundle.main.path(forResource: "StartPageHideSections3", ofType: "js"),
                let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
            let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
            userContentController.addUserScript(userScript)
            self.webView.load(urlRequest)
            self.webView.scrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -40)
            self.webView.scrollView.bounces = false;
        }
    
        if number == 5 {
            
            let urlString: String = "https://dsaofnwi.org/our-stories/alyse-biros-story.html"
            let url: URL = URL(string: urlString)!
            let urlRequest: URLRequest = URLRequest(url: url)
            
            let config = WKWebViewConfiguration()
            let userContentController = WKUserContentController()
            config.userContentController = userContentController
            self.webView = WKWebView(frame: view.frame, configuration: config)
            
            view.addSubview(webView)
            
            guard let scriptPath = Bundle.main.path(forResource: "StartPageHideSections3", ofType: "js"),
                let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
            let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
            userContentController.addUserScript(userScript)
            self.webView.load(urlRequest)
            self.webView.scrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -40)
            self.webView.scrollView.bounces = false;
            
        }
        
        if number == 6 {
            
            let urlString: String = "https://dsaofnwi.org/our-stories/brayden-mckim.html"
            let url: URL = URL(string: urlString)!
            let urlRequest: URLRequest = URLRequest(url: url)
            
            let config = WKWebViewConfiguration()
            let userContentController = WKUserContentController()
            config.userContentController = userContentController
            self.webView = WKWebView(frame: view.frame, configuration: config)
            
            view.addSubview(webView)
            
            guard let scriptPath = Bundle.main.path(forResource: "StartPageHideSections4", ofType: "js"),
                let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
            let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
            userContentController.addUserScript(userScript)
            self.webView.load(urlRequest)
            self.webView.scrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -130)
            self.webView.scrollView.bounces = false;
            
        }
        
        }
    }
    




