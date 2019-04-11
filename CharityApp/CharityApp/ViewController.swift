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
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var welcomeParaLabel: UILabel!
    @IBOutlet weak var welcomeParaText: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let url = "https://dsaofnwi.org/"
        
        guard let myURL = URL(string: url) else {
            print("Error: \(String(describing: url)) doesn't seem to be a valid URL")
            return
        }
        
        
        do {
            let html = try! String(contentsOf: myURL, encoding: .utf8)
            //let doc: Document = try SwiftSoup.parse(html)
            let primaryH1: Elements = try SwiftSoup.parse(html).select("div.primary-content h1")
            let primaryContent: Elements = try SwiftSoup.parse(html).select("div.primary-content p")
            welcomeLabel.text = try primaryH1.text()
            welcomeParaLabel.text = try primaryContent.text()
            welcomeParaText.text = try primaryContent.text()
        } catch let error {
            print("Error:", error)
        }
        
    }
    


}

