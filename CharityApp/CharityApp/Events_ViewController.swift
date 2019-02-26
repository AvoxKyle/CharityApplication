//
//  Events_ViewController.swift
//  CharityApp
//
//  Created by Francis,Dalton J on 2/26/19.
//  Copyright © 2019 King,Sierra M. All rights reserved.
//

import UIKit


class EventItem {
    var event_Name: String?
    var event_Desc: String?
    var event_Date: String?
}

class Events_ViewController: UIViewController {

    @IBOutlet var EventName: UILabel!
    @IBOutlet var EventDesc: UILabel!
    @IBOutlet var EventDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let test_Event = EventItem()
        test_Event.event_Name = "Big Event"
        test_Event.event_Desc = "Something that's happening and will be very large"
        test_Event.event_Date = "3/14/19"
        
        
    EventName.text = test_Event.event_Name!
    EventDesc.text = test_Event.event_Desc!
    EventDate.text = test_Event.event_Date!
        
        
        // Do any additional setup after loading the view.
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
