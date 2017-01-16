//
//  TestViewController.swift
//  uKeyboard1
//
//  Created by Thelonius Mbortov on 12/16/16.
//  Copyright © 2016 uKeyboard. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    //@IBOutlet weak var buttonsAll: UIButton!
    @IBOutlet var buttonsAll: [UIButton]!
    
    
    @IBAction func anyButtonPressed(_ sender: UIButton) {
        highlightButton(button: sender)
        if let buttonVal = sender.titleLabel?.text {
            setKey(val: buttonVal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        highlightSelected()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setKey(val: String) {
        keyPrefs.setValue(val, forKey: senderKey)
    }
    
    func highlightSelected() {
        let selectedChar = keyPrefs.string(forKey: senderKey)
        
        unhighlightAll()
        
        for eachButton in buttonsAll {
            if let val = eachButton.titleLabel?.text {
                if val == selectedChar {
                    eachButton.backgroundColor = .lightGray
                }
            }
        }
    }
    
    func highlightButton(button: UIButton) {
        unhighlightAll()
        button.backgroundColor = .lightGray
    }
    
    func unhighlightAll() {
        for eachButton in buttonsAll {
            eachButton.backgroundColor = .none
        }
    }
}
