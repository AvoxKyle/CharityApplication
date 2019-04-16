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
        
        let config = WKWebViewConfiguration()
        let userContentController = WKUserContentController()
        config.userContentController = userContentController
        self.webView = WKWebView(frame: view.frame, configuration: config)
        
        view.addSubview(webView)
        
        guard let scriptPath = Bundle.main.path(forResource: "StartPageHideSections", ofType: "js"),
            let scriptSource = try? String(contentsOfFile: scriptPath) else {return}
        let userScript = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        
        let urlString: String = "https://dsaofnwi.org/who_we_are/mission.html"
        let url: URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        self.webView.load(urlRequest)
        
    }
    


}

