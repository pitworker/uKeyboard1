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
        let keyBoardNib = UINib(nibName: "KeyboardView", bundle: nil)
        keyBoardView = keyBoardNib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.addSubview(keyBoardView)
//        keyBoardView.frame.size.width = self.view.frame.size.width
//        keyBoardView.frame.size.height = self.view.frame.size.height
        print("\(view.frame.size.width)")
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

}
