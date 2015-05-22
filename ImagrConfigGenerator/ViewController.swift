//
//  ViewController.swift
//  ImagrConfigGenerator
//
//  Created by Nick on 5/21/15.
//  Copyright (c) 2015 Sacred Heart. All rights reserved.
//

import Cocoa
import AppKit

// MARK: == imagr_config.plist keys ==
let passwordKey = "password"
let workflowsKey = "workflows"
// MARK: -

class ViewController: NSViewController {

    // MARK: == Variables ==
    var password = ""
    var workflows: [Dictionary<String, String>] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func loadPlistData() {
        let myFiledialog:NSOpenPanel = NSOpenPanel()
        myFiledialog.canChooseFiles = true
        myFiledialog.canChooseDirectories = false
        myFiledialog.canCreateDirectories = false
        myFiledialog.allowsMultipleSelection = false
        myFiledialog.runModal()
        
        var chosenFile = myFiledialog.URL
        if (chosenFile != nil) {
            // do stuff
            let resultDictionary = NSMutableDictionary(contentsOfURL: chosenFile!)
        }
    }

}

