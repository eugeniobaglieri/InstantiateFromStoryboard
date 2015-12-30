//
//  TimeViewController.swift
//  InstantiateFromStoryboard
//
//  Created by Eugenio Baglieri on 30/12/15.
//  Copyright © 2015 Eugenio Baglieri. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    let timeFormatter: NSDateFormatter = {
        let df = NSDateFormatter()
        df.dateFormat = "HH:mm:ss"
        return df
    }()
    
    var currentTime: String {
        return timeFormatter.stringFromDate(NSDate())
    }
    
    var timer:  NSTimer!

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTime:", userInfo: nil, repeats: true)
        timer.fire()
    }
    
    func updateTime(timer: NSTimer) {
        timeLabel.text = currentTime
    }
}
