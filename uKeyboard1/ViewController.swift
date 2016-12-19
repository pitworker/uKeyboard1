//
//  ViewController.swift
//  uKeyboard1
//
//  Created by Thelonius Mbortov on 12/1/16.
//  Copyright © 2016 uKeyboard. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    var menuShowing = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func expandMenu(_ sender: Any) {
        if (menuShowing){
            trailing.constant = -200
        }
        else{
            trailing.constant = 0
        }
        menuShowing = !menuShowing 
    }
}

