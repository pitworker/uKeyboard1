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
    
    
    @IBAction func key1ASender(_ sender: Any) {
        senderKey = "Key1A"
    }
    @IBAction func key1BSender(_ sender: Any) {
        senderKey = "Key1B"
    }
    @IBAction func key1CSender(_ sender: Any) {
        senderKey = "Key1C"
    }
    @IBAction func key1DSender(_ sender: Any) {
        senderKey = "Key1D"
    }
    @IBAction func key1ESender(_ sender: Any) {
        senderKey = "Key1E"
    }
    @IBAction func key1FSender(_ sender: Any) {
        senderKey = "Key1F"
    }
    @IBAction func key1GSender(_ sender: Any) {
        senderKey = "Key1G"
    }
    
    @IBAction func key2ASender(_ sender: Any) {
        senderKey = "Key2A"
    }
    @IBAction func key2BSender(_ sender: Any) {
        senderKey = "Key2B"
    }
    @IBAction func key2CSender(_ sender: Any) {
        senderKey = "Key2C"
    }
    @IBAction func key2DSender(_ sender: Any) {
        senderKey = "Key2D"
    }
    @IBAction func key2ESender(_ sender: Any) {
        senderKey = "Key2E"
    }
    @IBAction func key2FSender(_ sender: Any) {
        senderKey = "Key2F"
    }
    @IBAction func key2GSender(_ sender: Any) {
        senderKey = "Key2G"
    }
    @IBAction func key2HSender(_ sender: Any) {
        senderKey = "Key2H"
    }
    @IBAction func key2ISender(_ sender: Any) {
        senderKey = "Key2I"
    }
    @IBAction func key2JSender(_ sender: Any) {
        senderKey = "Key2J"
    }
    
    @IBAction func key3ASender(_ sender: Any) {
        senderKey = "Key3A"
    }
    @IBAction func key3BSender(_ sender: Any) {
        senderKey = "Key3B"
    }
    @IBAction func key3CSender(_ sender: Any) {
        senderKey = "Key3C"
    }
    @IBAction func key3DSender(_ sender: Any) {
        senderKey = "Key3D"
    }
    @IBAction func key3ESender(_ sender: Any) {
        senderKey = "Key3E"
    }
    @IBAction func key3FSender(_ sender: Any) {
        senderKey = "Key3F"
    }
    @IBAction func key3GSender(_ sender: Any) {
        senderKey = "Key3G"
    }
    @IBAction func key3HSender(_ sender: Any) {
        senderKey = "Key3H"
    }
    @IBAction func key3ISender(_ sender: Any) {
        senderKey = "Key3I"
    }
    @IBAction func key3JSender(_ sender: Any) {
        senderKey = "Key3J"
    }
    
    @IBAction func key4ASender(_ sender: Any) {
        senderKey = "Key4A"
    }
    @IBAction func key4BSender(_ sender: Any) {
        senderKey = "Key4B"
    }
    @IBAction func key4CSender(_ sender: Any) {
        senderKey = "Key4C"
    }
    @IBAction func key4DSender(_ sender: Any) {
        senderKey = "Key4D"
    }
    @IBAction func key4ESender(_ sender: Any) {
        senderKey = "Key4E"
    }
    @IBAction func key4FSender(_ sender: Any) {
        senderKey = "Key4F"
    }
    @IBAction func key4GSender(_ sender: Any) {
        senderKey = "Key4G"
    }
    @IBAction func key4HSender(_ sender: Any) {
        senderKey = "Key4H"
    }
    @IBAction func key4ISender(_ sender: Any) {
        senderKey = "Key4I"
    }
    @IBAction func key4JSender(_ sender: Any) {
        senderKey = "Key4J"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setKeyTitlesRow1()
        setKeyTitlesRow2()
        setKeyTitlesRow3()
        setKeyTitlesRow4()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setKeyTitlesRow1() {
        if let keyTitle = keyPrefs.string(forKey: "Key1A") {
            self.key1A.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key1A")
            self.key1A.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key1B") {
            self.key1B.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key1B")
            self.key1B.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key1C") {
            self.key1C.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key1C")
            self.key1C.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key1D") {
            self.key1D.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key1D")
            self.key1D.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key1E") {
            self.key1E.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key1E")
            self.key1E.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key1F") {
            self.key1F.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key1F")
            self.key1F.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key1G") {
            self.key1G.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key1G")
            self.key1G.setTitle("", for: .normal)
        }
    }
    
    func setKeyTitlesRow2() {
        if let keyTitle = keyPrefs.string(forKey: "Key2A") {
            self.key2A.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2A")
            self.key2A.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2B") {
            self.key2B.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2B")
            self.key2B.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2C") {
            self.key2C.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2C")
            self.key2C.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2D") {
            self.key2D.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2D")
            self.key2D.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2E") {
            self.key2E.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2E")
            self.key2E.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2F") {
            self.key2F.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2F")
            self.key2F.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2G") {
            self.key2G.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2G")
            self.key2G.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2H") {
            self.key2H.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2H")
            self.key2H.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2I") {
            self.key2I.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2I")
            self.key2I.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key2J") {
            self.key2J.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key2J")
            self.key2J.setTitle("", for: .normal)
        }
    }
    
    func setKeyTitlesRow3() {
        if let keyTitle = keyPrefs.string(forKey: "Key3A") {
            self.key3A.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3A")
            self.key3A.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3B") {
            self.key3B.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3B")
            self.key3B.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3C") {
            self.key3C.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3C")
            self.key3C.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3D") {
            self.key3D.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3D")
            self.key3D.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3E") {
            self.key3E.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3E")
            self.key3E.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3F") {
            self.key3F.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3F")
            self.key3F.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3G") {
            self.key3G.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3G")
            self.key3G.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3H") {
            self.key3H.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3H")
            self.key3H.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3I") {
            self.key3I.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3I")
            self.key3I.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key3J") {
            self.key3J.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key3J")
            self.key3J.setTitle("", for: .normal)
        }
    }
    
    func setKeyTitlesRow4() {
        if let keyTitle = keyPrefs.string(forKey: "Key4A") {
            self.key4A.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4A")
            self.key4A.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4B") {
            self.key4B.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4B")
            self.key4B.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4C") {
            self.key4C.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4C")
            self.key4C.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4D") {
            self.key4D.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4D")
            self.key4D.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4E") {
            self.key4E.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4E")
            self.key4E.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4F") {
            self.key4F.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4F")
            self.key4F.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4G") {
            self.key4G.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4G")
            self.key4G.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4H") {
            self.key4H.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4H")
            self.key4H.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4I") {
            self.key4I.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4I")
            self.key4I.setTitle("", for: .normal)
        }
        
        if let keyTitle = keyPrefs.string(forKey: "Key4J") {
            self.key4J.setTitle(keyTitle, for: .normal)
        } else {
            keyPrefs.setValue("", forKey: "Key4J")
            self.key4J.setTitle("", for: .normal)
        }
    }
}
