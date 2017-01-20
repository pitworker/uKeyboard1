//
//  KeyboardViewController.swift
//  uKeyboard
//
//  Created by Sebastian Carpenter on 12/1/16.
//  Copyright © 2016 uKeyboard. All rights reserved.
//

import UIKit
import Foundation


class KeyboardViewController: UIInputViewController {
    var keyBoardView: UIView!
    
    @IBOutlet weak var key1A: UIButton!
    @IBOutlet weak var key1B: UIButton!
    @IBOutlet weak var key1C: UIButton!
    @IBOutlet weak var key1D: UIButton!
    @IBOutlet weak var key1E: UIButton!
    @IBOutlet weak var key1F: UIButton!
    
    @IBOutlet weak var key2A: UIButton!
    @IBOutlet weak var key2B: UIButton!
    @IBOutlet weak var key2C: UIButton!
    @IBOutlet weak var key2D: UIButton!
    @IBOutlet weak var key2E: UIButton!
    @IBOutlet weak var key2F: UIButton!
    @IBOutlet weak var key2G: UIButton!
    @IBOutlet weak var key2H: UIButton!
    @IBOutlet weak var key2I: UIButton!
    @IBOutlet weak var key2J: UIButton!
    
    @IBOutlet weak var key3A: UIButton!
    @IBOutlet weak var key3B: UIButton!
    @IBOutlet weak var key3C: UIButton!
    @IBOutlet weak var key3D: UIButton!
    @IBOutlet weak var key3E: UIButton!
    @IBOutlet weak var key3F: UIButton!
    @IBOutlet weak var key3G: UIButton!
    @IBOutlet weak var key3H: UIButton!
    @IBOutlet weak var key3I: UIButton!
    @IBOutlet weak var key3J: UIButton!
    
    @IBOutlet weak var key4A: UIButton!
    @IBOutlet weak var key4B: UIButton!
    @IBOutlet weak var key4C: UIButton!
    @IBOutlet weak var key4D: UIButton!
    @IBOutlet weak var key4E: UIButton!
    @IBOutlet weak var key4F: UIButton!
    @IBOutlet weak var key4G: UIButton!
    @IBOutlet weak var key4H: UIButton!
    @IBOutlet weak var key4I: UIButton!
    @IBOutlet weak var key4J: UIButton!
    
    @IBOutlet var allKeys: [UIButton]!
    
    var keyNames: [UIButton : String]!
    
    var shiftIsOn = false
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform custom UI setup here
        let keyBoardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyBoardView = keyBoardNib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.addSubview(keyBoardView)
        
        setKeyNames()
        setKeyTitles()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
    }

    func setKeyNames() {
        keyNames = [
            key1A : "Key1A",
            key1B : "Key1B",
            key1C : "Key1C",
            key1D : "Key1D",
            key1E : "Key1E",
            key1F : "Key1F",
            
            key2A : "Key2A",
            key2B : "Key2B",
            key2C : "Key2C",
            key2D : "Key2D",
            key2E : "Key2E",
            key2F : "Key2F",
            key2G : "Key2G",
            key2H : "Key2H",
            key2I : "Key2I",
            key2J : "Key2J",
            
            key3A : "Key3A",
            key3B : "Key3B",
            key3C : "Key3C",
            key3D : "Key3D",
            key3E : "Key3E",
            key3F : "Key3F",
            key3G : "Key3G",
            key3H : "Key3H",
            key3I : "Key3I",
            key3J : "Key3J",
            
            key4A : "Key4A",
            key4B : "Key4B",
            key4C : "Key4C",
            key4D : "Key4D",
            key4E : "Key4E",
            key4F : "Key4F",
            key4G : "Key4G",
            key4H : "Key4H",
            key4I : "Key4I",
            key4J : "Key4J"
        ]
    }
    
    func setKeyTitles() {
        for eachKey in allKeys {
            setIndividualKeyTitle(keyToSet: eachKey, title: keyNames[eachKey]!)
        }
    }
    
    func setIndividualKeyTitle(keyToSet: UIButton, title: String) {
        if let keyTitle = keyPrefs!.string(forKey: title) {
            keyToSet.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs!.setValue("?", forKey: title)
            keyToSet.setTitle("?", for: .normal)
        }
    }

    func capitalizeLetters() {
        for eachKey in allKeys {
            let withCapital = eachKey.titleLabel!.text!.capitalized
            eachKey.setTitle(withCapital, for: .normal)
            shiftIsOn = true
        }
    }
    
    func resetKeys() {
        if shiftIsOn {
            shiftIsOn = false
            setKeyTitles()
        }
    }
    
    /****************Keyboard Typing******************/
    
    @IBAction func globeKeyPressed(_ sender: UIButton) {
        self.advanceToNextInputMode()
        resetKeys()
    }
    
    @IBAction func spaceKeyPressed(_ sender: UIButton) {
        self.textDocumentProxy.insertText(" ")
        resetKeys()
    }
    
    @IBAction func returnKeyPressed(_ sender: UIButton) {
        self.textDocumentProxy.insertText("\n")
        resetKeys()
    }
    
    @IBAction func deleteKeyPressed(_ sender: UIButton) {
        self.textDocumentProxy.deleteBackward()
        resetKeys()
    }
    
    @IBAction func shiftKeyPressed(_ sender: UIButton) {
        if shiftIsOn {
            resetKeys()
        } else {
            capitalizeLetters()
        }
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if let symbolToType = sender.titleLabel!.text {
            self.textDocumentProxy.insertText(symbolToType)
            //self.textDocumentProxy.insertText("\(sender.titleLabel!.text!)")
        }
        resetKeys()
    }
}
