//
//  ViewController.swift
//  uKeyboard1
//
//  Created by Thelonius Mbortov on 12/1/16.
//  Copyright © 2016 uKeyboard. All rights reserved.

import UIKit

class ViewController: UIViewController {
    //
    @IBOutlet weak var letter: UIView!
    @IBOutlet weak var numbers: UIView!
    @IBOutlet weak var punctuations: UIView!
    @IBOutlet weak var emojis: UIView!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    //
    var menuShowing = false
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.letter.isHidden = false
        self.numbers.isHidden = true
        self.punctuations.isHidden = true
        self.emojis.isHidden = true
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
    
    @IBAction func menu_Letters(_ sender: UIButton) {
        self.letter.isHidden = false
        self.numbers.isHidden = true
        self.punctuations.isHidden = true
        self.emojis.isHidden = true
    }
    
    
    @IBAction func menu_Numbers(_ sender: UIButton) {
        self.numbers.isHidden = false
        self.letter.isHidden = true
        self.punctuations.isHidden = true
        self.emojis.isHidden = true
    }
    
    
    @IBAction func menu_Punctuations(_ sender: UIButton) {
        self.punctuations.isHidden = false
        self.numbers.isHidden = true
        self.letter.isHidden = true
        self.emojis.isHidden = true
    }
    
    
    @IBAction func menu_Emojis(_ sender: UIButton) {
        self.emojis.isHidden = false
        self.punctuations.isHidden = true
        self.numbers.isHidden = true
        self.letter.isHidden = true
    }
    
    
    @IBAction func menu_Other(_ sender: UIButton) {
    }
}

