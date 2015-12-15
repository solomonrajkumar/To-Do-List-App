//
//  FirstViewController.swift
//  To Do List
//
//  Created by Solomon Rajkumar on 14-12-15.
//  Copyright © 2015 SoluAppHouse. All rights reserved.
//

import UIKit

var notes = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var notesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return notes.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "NoteCell")
        
        cell.textLabel?.text = notes[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        notesTableView.reloadData()
        
    }
    
    

}

