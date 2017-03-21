//
//  ViewController.swift
//  BitDownload
//
//  Created by Thomas Buatois on 21/03/2017.
//  Copyright © 2017 Thomas Buatois. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var TitleLabelField: NSTextField!
    @IBOutlet weak var ContentSearchField: NSSearchField!
    
    @IBAction func TorrentSearchField(_ sender: Any) {
        TitleLabelField.stringValue = " Searching for ... \(ContentSearchField.stringValue) in T411 database"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    


}

