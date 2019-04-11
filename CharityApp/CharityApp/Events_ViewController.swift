//
//  Events_ViewController.swift
//  CharityApp
//
//  Created by Francis,Dalton J on 2/26/19.
//  Copyright © 2019 King,Sierra M. All rights reserved.
//

import UIKit
import SwiftSoup

class EventItem {
    var event_Name: String?
    var event_Desc: String?
    var event_Date: String?
}
 

class Events_ViewController: UIViewController {

    @IBOutlet var EventName: [UILabel]!
    @IBOutlet var EventDesc: [UILabel]!
    @IBOutlet var EventDate: [UILabel]!

    @IBAction func setSpec(_ sender: AnyObject) {
    guard let button = sender as? UIButton else {
    return
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString: String = "https://dsaofnwi.org/news_events/event_calendar.html"
        let url: URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        let html = try! String(contentsOf: url, encoding: .utf8)
        do {
            let doc: Document = try SwiftSoup.parseBodyFragment(html)
            let body = doc.body()
            
        } catch Exception.Error(let type, let message) {
            print("Message: \(message)")
        } catch {
            print("error")
        }
        
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
        
    }
    


 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIButton else {
            return
        }
        if  segue.destination is SpecEvent_ViewController {
            let vc = segue.destination as! SpecEvent_ViewController
            vc.passedName = self.EventName[button.tag-1].text
            vc.passedDetails = self.EventDesc[button.tag-1].text
            vc.passedDate = self.EventDate[button.tag-1].text
        }
    }
    
}
