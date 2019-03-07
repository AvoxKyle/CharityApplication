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

    @IBOutlet var EventName: [UILabel]!
    @IBOutlet var EventDesc: [UILabel]!
    @IBOutlet var EventDate: [UILabel]!
    
    //@IBOutlet var EventName: UILabel!
    //@IBOutlet var EventDesc: UILabel!
    //@IBOutlet var EventDate: UILabel!
    
    
    @IBAction func setSpec(_ sender: AnyObject) {
    guard let button = sender as? UIButton else {
    return
    }
    /*
    switch button.tag {
    case 1:
        self.EventName[button.tag-1].text = "event 1"
    case 2:
        self.EventName.text = "event 2"
    case 3:
        self.EventName.text = "event 3"
    case 4:
        self.EventName.text = "event 4"
    default:
        self.EventName.text = "there is a problem"
    }
        */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let event1 = EventItem()
        let event2 = EventItem()
        let event3 = EventItem()
        let event4 = EventItem()
        var upcomingEvents = [EventItem]()
        upcomingEvents.append(event1)
        upcomingEvents.append(event2)
        upcomingEvents.append(event3)
        upcomingEvents.append(event4)
        for i in 0..<upcomingEvents.count {
            upcomingEvents[i].event_Name = "filler " + String(i)
            upcomingEvents[i].event_Desc = "foiler " + String(i)
            upcomingEvents[i].event_Date = "fowler " + String(i)
        }
        for i in 0..<upcomingEvents.count {
            EventName[i].text = upcomingEvents[i].event_Name
            EventDesc[i].text = upcomingEvents[i].event_Desc
            EventDate[i].text = upcomingEvents[i].event_Date
        }
        
        let test_Event = EventItem()
        test_Event.event_Name = "Big Event"
        test_Event.event_Desc = "Something that's happening and will be very large"
        test_Event.event_Date = "3/14/19"
        
        /*
    EventName.text = test_Event.event_Name!
    EventDesc.text = test_Event.event_Desc!
    EventDate.text = test_Event.event_Date!
 */
    }
    


 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIButton else {
            return
        }
        if  segue.destination is SpecEvent_ViewController {
            let vc = segue.destination as! SpecEvent_ViewController
            vc.passedName = self.EventName[button.tag-1].text
        }
    }
    
}
