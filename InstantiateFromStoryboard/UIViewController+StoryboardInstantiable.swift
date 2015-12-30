//
//  UIViewController+StoryboardInstantiable.swift
//  InstantiateFromStoryboard
//
//  Created by Eugenio Baglieri on 30/12/15.
//  Copyright © 2015 Eugenio Baglieri. All rights reserved.
//

import UIKit

extension UIViewController: StoryboardInstantiable {
    static var storyboardIdentifier: String {
        // Get the name of current class
        let classString = NSStringFromClass(self)
        let components = classString.componentsSeparatedByString(".")
        assert(components.count > 0, "Failed extract class name from \(classString)")
        return components.last!
    }
    
    class func instantiateFromStoryboard(storyboard: UIStoryboard) -> Self {
        return instantiateFromStoryboard(storyboard, type: self)
    }
}

extension UIViewController {
    
    // Thanks to generics, return automatically the right type
    private class func instantiateFromStoryboard<T: UIViewController>(storyboard: UIStoryboard, type: T.Type) -> T {
        return storyboard.instantiateViewControllerWithIdentifier(self.storyboardIdentifier) as! T
    }
}
