//
//  SecondViewController.swift
//  To Do List
//
//  Created by Solomon Rajkumar on 14-12-15.
//  Copyright © 2015 SoluAppHouse. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {
    
    
    @IBAction func addNoteAction(sender: AnyObject) {
        
        print(addNotesTextView.text)
        addNotesTextView.resignFirstResponder()
        //objFirstViewController.notesTableView.reloadData()
        
        notes.append(addNotesTextView.text)
        
        self.tabBarController?.selectedIndex = 0
    }
    @IBOutlet weak var addNotesTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //addNotesTextView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        addNotesTextView.becomeFirstResponder()

    }

}

