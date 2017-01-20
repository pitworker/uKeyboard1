//
//  KeyPrefs.swift
//  uKeyboard1
//
//  Created by Sebastian Carpenter on 12/12/16.
//  Copyright © 2016 uKeyboard. All rights reserved.
//


//contains the address to the UserDefaults that can be accessed both by the settings app and the keyboard extension
import Foundation
let keyPrefs = UserDefaults(suiteName: "group.uKeyboard.uKeyboardStuff") //settings data can be accessed by both the keyboard settings app and the keyboard extension because the two apps are linked by a group, allowing them to transfer information.
