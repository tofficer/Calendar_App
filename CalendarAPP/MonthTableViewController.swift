//
//  MonthTableViewController.swift
//  CalendarAPP
//
//  Created by Tyler Officer on 3/12/16.
//  Copyright © 2016 Tyler Officer. All rights reserved.
//

import UIKit

class MonthTableViewController: UITableViewController {
    
    var months :[String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    var numMonths = 12
    var month = -1
    var numDays = -1
    
    
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
        return numMonths
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MONTH_CELL", forIndexPath: indexPath)

        cell.textLabel?.text = months[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let row = indexPath.row
        month = row + 1
        if ( month == 4 || month == 6 || month == 9 || month == 11){
            numDays = 30
        }
        else if(month == 3){
            numDays = 28
        }
        else{
            numDays = 31
        }
        
        self.performSegueWithIdentifier("TO_DAY", sender: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "TO_DAY") {
            let vc:DayTableViewController = segue.destinationViewController as! DayTableViewController
            
            vc.month = month
            vc.numDays = numDays
            
        }
    }
    

}
