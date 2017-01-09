//
//  configureAppStyling.swift
//  TWTA
//
//  Created by Kevin De Koninck on 06/01/2017.
//  Copyright © 2017 Kevin De Koninck. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    
    func configureAppStyling() {
        styleNavigationBar()
        styleBarButtons()
    }
    
    func styleNavigationBar() {
        UINavigationBar.appearance().barTintColor = NAVIGATION_BAR_TINT_COLOR
        UINavigationBar.appearance().tintColor = NAVIGATION_BAR_ATTRIBUTES_COLOR
        
        UINavigationBar.appearance().titleTextAttributes = [
            NSFontAttributeName : UIFont.boldSystemFont(ofSize: 20.0) ,
            NSForegroundColorAttributeName : NAVIGATION_BAR_ATTRIBUTES_COLOR
        ]
    }
    
    func styleBarButtons() {
        let barButtonTextAttributes = [
            NSFontAttributeName : UIFont.boldSystemFont(ofSize: 15.0),
            NSForegroundColorAttributeName : NAVIGATION_BAR_ATTRIBUTES_COLOR
        ]
        UIBarButtonItem.appearance().setTitleTextAttributes(barButtonTextAttributes, for: UIControlState())
    }
}
