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
//        var textColor: UIColor
//        let proxy = self.textDocumentProxy
//        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
//            textColor = UIColor.white
//        } else {
//            textColor = UIColor.black
//        }
//        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }
//Forth row
    @IBAction func A4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("1")
    }
    @IBAction func B4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("2")
    }
    @IBAction func C4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("3")
    }
    @IBAction func D4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("4")
    }
    @IBAction func E4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("5")
    }
    @IBAction func F4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("6")
    }
    @IBAction func G4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("7")
    }
    @IBAction func H4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("8")
    }
    @IBAction func I4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("9")
    }
    @IBAction func J4Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("0")
    }
//Third row
    @IBAction func A3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("q")
    }
    @IBAction func B3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("w")
    }
    @IBAction func C3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("e")
    }
    @IBAction func D3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("r")
    }
    @IBAction func E3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("t")
    }
    @IBAction func F3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("y")
    }
    @IBAction func G3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("u")
    }

    @IBAction func H3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("i")
    }
    
    @IBAction func I3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("o")
    }

    @IBAction func J3Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("p")
    }
//Second row
    @IBAction func A2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("∂")
    }
    
    @IBAction func B2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("a")
    }
    
    @IBAction func C2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("s")
    }
    
    @IBAction func D2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("d")
    }
    
    @IBAction func E2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("f")
    }
    
    @IBAction func F2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("g")
    }
    
    @IBAction func G2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("h")
    }
    
    @IBAction func H2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("j")
    }
    
    @IBAction func I2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("k")
    }
    
    @IBAction func J2Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("l")
    }
    
//First row
    @IBAction func A1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("Capital")
    }
    
    @IBAction func B1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("z")
    }
    
    @IBAction func C1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("x")
    }
    
    @IBAction func D1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("c")
    }
    
    @IBAction func E1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("v")
    }
    
    @IBAction func F1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("b")
    }
    
    @IBAction func G1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("n")
    }
    
    @IBAction func H1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("m")
    }
    
    @IBAction func I1Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("Ω")
    }
    
    @IBAction func J1Action(_ sender: UIButton) {
        self.textDocumentProxy.deleteBackward()
    }
    
//Base row
    @IBAction func A0Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("∑")
    }
    
    @IBAction func B0Action(_ sender: UIButton) {
        self.advanceToNextInputMode()
    }
    
    @IBAction func C0Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("π")
    }
    
    @IBAction func D0Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText(" ")
    }
    
    @IBAction func E0Action(_ sender: UIButton) {
        self.textDocumentProxy.insertText("Enter")
    }
}
