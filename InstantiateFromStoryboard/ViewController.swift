//
//  ViewController.swift
//  InstantiateFromStoryboard
//
//  Created by Eugenio Baglieri on 30/12/15.
//  Copyright © 2015 Eugenio Baglieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func timeControllerButtonPressed(sender: UIButton) {
        let tc = TimeViewController.instantiateFromStoryboard(UIStoryboard.mainStoryboard())
        navigationController?.pushViewController(tc, animated: true)
    }

    @IBAction func settingControllerButtonPressed(sender: AnyObject) {
        let sc = SettingsTableViewController.instantiateFromStoryboard(UIStoryboard.mainStoryboard())
        navigationController?.pushViewController(sc, animated: true)
    }
}

