//
//  ViewController.swift
//  CharityApp
//
//  Created by King,Sierra M on 2/26/19.
//  Copyright © 2019 King,Sierra M. All rights reserved.
//

import UIKit
import SwiftSoup

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        let url = "https://dsaofnwi.org/"
        
        guard let myURL = URL(string: url) else {
            print("Error: \(String(describing: url)) doesn't seem to be a valid URL")
            return
        }
        
        
        do {
            let html = try! String(contentsOf: myURL, encoding: .utf8)
            //guard let elements: Elements = try? SwiftSoup.parse(html).select("div [class="primary-content"]") else {return}
        } catch let error {
            print("Error:", error)
        }
        
    }
    


}

