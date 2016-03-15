//
//  EventTableViewController.swift
//  CalendarAPP
//
//  Created by Tyler Officer on 3/12/16.
//  Copyright © 2016 Tyler Officer. All rights reserved.
//
//  Need to update so that events list is organized by date

import UIKit

class EventTableViewController: UITableViewController {
    
    var events :[Event] = []
        
    var eventInfo = String()
    var eventDate = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EVENT_CELL", forIndexPath: indexPath)
        let currEvent = self.events[indexPath.row]
        cell.textLabel?.text = currEvent.eventDate + " " + currEvent.eventInfo
        
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            tableView.beginUpdates()
            events.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            tableView.endUpdates()
        }
    }
    
    
    // MARK: - Navigation
    
    @IBAction func cancel (segue:UIStoryboardSegue) {
    }
    
    @IBAction func done (segue: UIStoryboardSegue) {
        
        print(eventDate)
        print(eventInfo)

        let addedEvent = Event(eventInfo: eventInfo, eventDate: eventDate)
        self.events.append(addedEvent)
        tableView.reloadData()
    }
    
}
