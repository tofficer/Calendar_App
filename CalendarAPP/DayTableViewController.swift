//
//  DayTableViewController.swift
//  CalendarAPP
//
//  Created by Tyler Officer on 3/12/16.
//  Copyright © 2016 Tyler Officer. All rights reserved.
//

import UIKit

class DayTableViewController: UITableViewController {

    var month = Int()
    var numDays = Int()
    var DayArr = [String]()
    var row = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return numDays
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DAY_CELL", forIndexPath: indexPath)

        for (var i = 0; i < numDays; i++) {
            DayArr.append(String(i+1))
        }
        cell.textLabel?.text = DayArr[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        row = indexPath.row
        
        self.performSegueWithIdentifier("TO_ADD_EVENT", sender: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "TO_ADD_EVENT") {
            let vc:AddEventViewController = segue.destinationViewController as! AddEventViewController
            
            vc.month = month
            vc.day = row + 1
            
        }
    }
    

}
