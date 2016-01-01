//
//  File.swift
//  InstantiateFromStoryboard
//
//  Created by Eugenio Baglieri on 01/01/16.
//  Copyright © 2016 Eugenio Baglieri. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable {
    static var storyboardIdentifier: String {get}
    static func instantiateFromStoryboard(storyboard: UIStoryboard) -> Self
}
