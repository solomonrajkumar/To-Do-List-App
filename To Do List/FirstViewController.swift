//
//  FirstViewController.swift
//  To Do List
//
//  Created by Solomon Rajkumar on 14-12-15.
//  Copyright © 2015 SoluAppHouse. All rights reserved.
//

import UIKit

// global variable to hold notes
var notes = [String]()


class FirstViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var notesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // check if NSUserDefaults is already set for storing persistent data
        if NSUserDefaults.standardUserDefaults().objectForKey("persistentNotes") != nil {
            
            // if set, pull the persisted data into local notes array
            notes = NSUserDefaults.standardUserDefaults().objectForKey("persistentNotes") as! [String]
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // function to pull number of rows in table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return notes.count
        
    }
    
    // function to populate cell values
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "NoteCell")
        
        cell.textLabel?.text = notes[indexPath.row]
        
        return cell
        
    }
    
    // reload table data when view appears
    override func viewDidAppear(animated: Bool) {
        
        notesTableView.reloadData()
        
    }
    
    // enable the delete feature
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        // if delete option is selected
        if editingStyle ==  UITableViewCellEditingStyle.Delete {
            
            // remove the notes at the selected row
            notes.removeAtIndex(indexPath.row)
            
            // update the persistent data
            NSUserDefaults.standardUserDefaults().setObject(notes, forKey: "persistentNotes")
            
            // reload table
            notesTableView.reloadData()
            
        }
        
    }
    
    

}

