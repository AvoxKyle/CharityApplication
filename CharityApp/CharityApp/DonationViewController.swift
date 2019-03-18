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

    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = WKWebView(frame: view.frame)
        view.addSubview(webView)
        
        let urlString: String = "https://dsaofnwi.org/what_you_can_do/donate.html"
        let url: URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
