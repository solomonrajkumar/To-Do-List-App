//
//  SecondViewController.swift
//  To Do List
//
//  Created by Solomon Rajkumar on 14-12-15.
//  Copyright © 2015 SoluAppHouse. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {
    
    
    @IBOutlet weak var addNotesTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addNotesTextView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

