//
//  ViewController.swift
//  uKeyboard1
//
//  Created by Thelonius Mbortov on 12/1/16.
//  Copyright © 2016 uKeyboard. All rights reserved.

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var types = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        types = ["Latin Characters", "Arabic Numbers", "Punctuations", "Emojis", "Other Characters"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CategoryTableViewCell
        cell.textLabel?.text = types[indexPath.row]
        return cell
    }

}

