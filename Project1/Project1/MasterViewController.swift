//
//  MasterViewController.swift
//  Project1
//
//  Created by Byrdann Fox on 3/14/15.
//  Copyright (c) 2015 lycan.io. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    // keep in mind...
    var objects = [String]()

    // ...
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // work with files on disk...
        let fm = NSFileManager.defaultManager()
        let path = NSBundle.mainBundle().resourcePath!
        let items = fm.contentsOfDirectoryAtPath(path, error: nil)
        for item in items as [String] {
            // "nssl" prefix...
            // a filter...
            if item.hasPrefix("nssl") {
                objects.append(item)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow() {
                
                let detailViewController = segue.destinationViewController as DetailViewController
                detailViewController.detailItem = objects[indexPath.row]
                
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        let object = objects[indexPath.row]
        cell.textLabel!.text = object
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}