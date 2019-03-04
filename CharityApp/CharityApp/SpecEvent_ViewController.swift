//
//  SpecEvent_ViewController.swift
//  CharityApp
//
//  Created by Francis,Dalton J on 3/4/19.
//  Copyright © 2019 King,Sierra M. All rights reserved.
//

import UIKit



class SpecItem {
    var spec_Name: String?
    //var spec_Desc: String?
    //var spec_Date: String?
}

class SpecEvent_ViewController: UIViewController {

    @IBOutlet var SpecName: UILabel!
    @IBOutlet var PopUpView: UIView!
    
    var passedName:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SpecName.text = passedName
        
    }
    
    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
