//
//  AddEventViewController.swift
//  CalendarAPP
//
//  Created by Tyler Officer on 3/12/16.
//  Copyright © 2016 Tyler Officer. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {

    var month = Int()
    var day = Int()
    
    @IBOutlet weak var addEventInfo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ADD_SEGUE" {
            let vc = segue.destinationViewController as! EventTableViewController
            vc.eventInfo = addEventInfo.text!
            let eventDate = "\(month)/\(day)"
            vc.eventDate = eventDate
            
        }
        
    }

}
