//
//  KeyboardViewController.swift
//  uKeyboard
//
//  Created by Thelonius Mbortov on 12/1/16.
//  Copyright © 2016 uKeyboard. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    var keyBoardView: UIView!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform custom UI setup here
        let keyBoardNib = UINib(nibName: "testerKeyboard", bundle: nil)
        keyBoardView = keyBoardNib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.addSubview(keyBoardView)
        //
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        self.textDocumentProxy .insertText("\(sender.titleLabel!.text!)")
    }
    
    @IBAction func globeKeyPressed(_ sender: UIButton) {
        self.advanceToNextInputMode()
    }
    
    @IBAction func spaceKeyPressed(_ sender: UIButton) {
        self.textDocumentProxy.insertText(" ")
    }
    @IBAction func returnKeyPressed(_ sender: UIButton) {
        
    }
}
