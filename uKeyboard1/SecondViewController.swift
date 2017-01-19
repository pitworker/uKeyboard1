//
//  SecondViewController.swift
//  uKeyboard1
//
//  Created by Isaac Zhu on 12/6/16.
//  Copyright © 2016 uKeyboard. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstRow: UIStackView!
    @IBOutlet weak var secondRow: UIStackView!
    @IBOutlet weak var thirdRow: UIStackView!
    @IBOutlet weak var fourthRow: UIStackView!
    
    
    @IBOutlet weak var key1A: UIButton!
    @IBOutlet weak var key1B: UIButton!
    @IBOutlet weak var key1C: UIButton!
    @IBOutlet weak var key1D: UIButton!
    @IBOutlet weak var key1E: UIButton!
    @IBOutlet weak var key1F: UIButton!
    @IBOutlet weak var key1G: UIButton!
    @IBOutlet weak var key1H: UIButton!
    
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
    
//    public static var updateKeys: Bool = false {
//        willSet{
//            if newValue == true {
//                setKeyTitles()
//                SecondViewController.resetKey = !SecondViewController.resetKey
//            }
//        }
//    }
//    public static var resetKey: Bool = false {
//        willSet{
//            SecondViewController.updateKeys = false
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setKeyNames()
        
        setKeyTitles()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setKeyNames()
        setKeyTitles()
    }
    
    func setKeyNames() {
        keyNames = [
            key1A : "Key1A",
            key1B : "Key1B",
            key1C : "Key1C",
            key1D : "Key1D",
            key1E : "Key1E",
            key1F : "Key1F",
            key1G : "Key1G",
            key1H : "Key1H",
            
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
    
    @IBAction func keySender(_ sender: UIButton) {
        if let keySelected = keyNames![sender] {
            senderKey = keySelected
        }
    }
    
    func setKeyTitles() {
        for eachKey in allKeys {
            setKeyTitle(keyToSet: eachKey, title: keyNames[eachKey]!)
        }
    }
    
    func setKeyTitle(keyToSet: UIButton, title: String) {
        if let keyTitle = keyPrefs!.string(forKey: title) {
            keyToSet.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs!.setValue("", forKey: title)
            keyToSet.setTitle("", for: .normal)
        }
    }
}
