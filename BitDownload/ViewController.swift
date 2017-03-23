//
//  ViewController.swift
//  BitDownload
//
//  Created by Thomas Buatois on 21/03/2017.
//  Copyright © 2017 Thomas Buatois. All rights reserved.
//

import Cocoa
import Alamofire

class ViewController: NSViewController {

    
    @IBOutlet weak var TitleLabelField: NSTextField!
    @IBOutlet weak var ContentSearchField: NSSearchField!
    @IBOutlet weak var TextFieldTest: NSScrollView!
    @IBOutlet weak var GetAuth: NSButton!
    @IBOutlet weak var UsernameTextField: NSTextField!
    
    @IBOutlet weak var PasswordSecureTextField: NSSecureTextField!
    @IBAction func GetAuth(_ sender: Any) {
        
        
        let url = "https://api.t411.li/auth"
        
        let parameters = [
            "username": UsernameTextField.stringValue,
            "password": PasswordSecureTextField.stringValue
        ]

        
        Alamofire.request(url, method: .post, parameters: parameters)
                .responseJSON { response in
                debugPrint(response)
        }
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

