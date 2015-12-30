//
//  UIStoryboardExtension.swift
//  InstantiateFromStoryboard
//
//  Created by Eugenio Baglieri on 30/12/15.
//  Copyright © 2015 Eugenio Baglieri. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    class func mainStoryboard() -> UIStoryboard! {
        
        guard let mainStoryboardName = NSBundle.mainBundle().infoDictionary?["UIMainStoryboardFile"] as? String else {
            assertionFailure("No UIMainStoryboardFile found in main bundle")
            return nil
        }
        
        return UIStoryboard(name: mainStoryboardName, bundle: NSBundle.mainBundle())
    }
}