//
//  SettingsViewController.swift
//  InstantiateFromStoryboard
//
//  Created by Eugenio Baglieri on 30/12/15.
//  Copyright © 2015 Eugenio Baglieri. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    @IBOutlet weak var lightLabel: UILabel!
    @IBOutlet weak var lightSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightSwitch.setOn(true, animated: true)
    }

    @IBAction func toggleLightSwitch(sender: UISwitch) {
        lightLabel.text = sender.on ? "Turn light off" : "Turn light on"
    }
}
