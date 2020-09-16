//
//  ViewController.swift
//  HelloWorld
//
//  Created by Office-iMac on 2020-09-16.
//  Copyright © 2020 Tony Jem. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    //    MARK: Outlets
    @IBOutlet var nameField: NSTextField!
    @IBOutlet var helloLabel: NSTextField!
    
    //    MARK: Start
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.stringValue = ""
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    //    MARK: Outlets
    @IBAction func sayButtonClicked(_ sender: NSButton) {
        var name = nameField.stringValue
        if name.isEmpty{
            name = "World"
        }
        helloLabel.stringValue = "Hello, \(name) !!!"
    }
    
    @IBAction func clearButtonClicked(_ sender: NSButton) {
        helloLabel.stringValue = ""
        nameField.stringValue = ""
    }
}

