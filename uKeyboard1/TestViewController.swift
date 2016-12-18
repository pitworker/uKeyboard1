//
//  TestViewController.swift
//  uKeyboard1
//
//  Created by Thelonius Mbortov on 12/16/16.
//  Copyright © 2016 uKeyboard. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBAction func character1(_ sender: Any) {
        setKey(val: "A")
    }
    @IBAction func character2(_ sender: Any) {
        setKey(val: "∆")
    }
    @IBAction func character3(_ sender: Any) {
        setKey(val: "1")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setKey(val: String) {
        keyPrefs.setValue(val, forKey: senderKey)
    }
}
