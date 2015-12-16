//
//  SecondViewController.swift
//  To Do List
//
//  Created by Solomon Rajkumar on 14-12-15.
//  Copyright © 2015 SoluAppHouse. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {
    
    
    // function to handle on click of DOne button
    @IBAction func addNoteAction(sender: AnyObject) {
        
        // close editing view
        addNotesTextView.resignFirstResponder()

        // add the strings present in text view to table
        notes.append(addNotesTextView.text)
        
        // store the existing array to persistent data
        NSUserDefaults.standardUserDefaults().setObject(notes, forKey: "persistentNotes")
        
        // move to first tab bar
        self.tabBarController?.selectedIndex = 0
    }
    
    // outlet for textview
    @IBOutlet weak var addNotesTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // automatically enable editing when view appears
    override func viewDidAppear(animated: Bool) {
        addNotesTextView.becomeFirstResponder()

    }

}

