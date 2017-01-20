//
//  ViewController.swift
//  uKeyboard1
//
//  Created by Thelonius Mbortov on 12/1/16.
//  Copyright © 2016 uKeyboard. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    //outlets defining each category of characters in the menu
    @IBOutlet weak var letters: UIView!
    @IBOutlet weak var numbers: UIView!
    @IBOutlet weak var punctuations: UIView!
    @IBOutlet weak var emojis: UIView!
    @IBOutlet weak var other: UIView!

    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    //collection referring to all the character buttons
    @IBOutlet var buttonsAll: [UIButton]!
    
    var menuShowing = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //sets which category of the menu is visible on startup
        self.letters.isHidden = false
        self.numbers.isHidden = true
        self.punctuations.isHidden = true
        self.emojis.isHidden = true
        self.other.isHidden = true
        
        highlightSelected() //highlights the current character of the key (in the settings view) that segued to the selector
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func expandMenu(_ sender: Any) { //expands the side menu so the user can select the character category
        if (menuShowing){
            trailing.constant = -200
        }
        else{
            trailing.constant = 0
        }
        menuShowing = !menuShowing 
    }
    
    
    //defines the actions taken on the selection of each category
    @IBAction func menu_Letters(_ sender: UIButton) {
        self.letters.isHidden = false
        self.numbers.isHidden = true
        self.punctuations.isHidden = true
        self.emojis.isHidden = true
        self.other.isHidden = true
    }
    
    @IBAction func menu_Numbers(_ sender: UIButton) {
        self.numbers.isHidden = false
        self.letters.isHidden = true
        self.punctuations.isHidden = true
        self.emojis.isHidden = true
        self.other.isHidden = true
    }
    
    @IBAction func menu_Punctuations(_ sender: UIButton) {
        self.punctuations.isHidden = false
        self.numbers.isHidden = true
        self.letters.isHidden = true
        self.emojis.isHidden = true
        self.other.isHidden = true
    }
    
    @IBAction func menu_Emojis(_ sender: UIButton) {
        self.emojis.isHidden = false
        self.punctuations.isHidden = true
        self.numbers.isHidden = true
        self.letters.isHidden = true
        self.other.isHidden = true
    }
    
    @IBAction func menu_Other(_ sender: UIButton) {
        self.other.isHidden = false
        self.letters.isHidden = true
        self.numbers.isHidden = true
        self.punctuations.isHidden = true
        self.emojis.isHidden = true
    }

    
    
    @IBAction func anyButtonPressed(_ sender: UIButton) {     //highlights the character selected by the user and sets the target key's value to the selected character
        highlightButton(button: sender)
        if let buttonVal = sender.titleLabel?.text {
            setKey(val: buttonVal)
        }
    }
    
    func setKey(val: String) { //sets, in userDefaults, the character for the target key
        keyPrefs!.setValue(val, forKey: SecondViewController.senderKey)
    }
    
    func highlightSelected() { //gives the character selected a grey background while keeping the background behind the other characters white
        let selectedChar = keyPrefs!.string(forKey: SecondViewController.senderKey)
        
        unhighlightAll()
        
        for eachButton in buttonsAll {
            if let val = eachButton.titleLabel?.text {
                if val == selectedChar {
                    eachButton.backgroundColor = .lightGray
                }
            }
        }
    }
    
    func highlightButton(button: UIButton) { //makes the background of a particular button grey
        unhighlightAll()
        button.backgroundColor = .lightGray
    }
    
    func unhighlightAll() { //makes the background for every character button in the view controller transparent
        for eachButton in buttonsAll {
            eachButton.backgroundColor = .none
        }
    }
}

