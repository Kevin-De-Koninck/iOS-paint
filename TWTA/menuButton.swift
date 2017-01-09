//
//  menuButton.swift
//  TWTA
//
//  Created by Kevin De Koninck on 06/01/2017.
//  Copyright © 2017 Kevin De Koninck. All rights reserved.
//

import UIKit

class menuButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 5.0
        //backgroundColor = UIColor(red: 46.0/255.0, green: 135.0/255.0, blue: 195.0/255.0, alpha: 1.0)
        backgroundColor = MENU_BUTTON_TINT_COLOR
        setTitleColor(UIColor.white, for: .normal)
    }

}
