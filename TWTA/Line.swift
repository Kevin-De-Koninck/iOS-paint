//
//  Line.swift
//  TWTA
//
//  Created by Kevin De Koninck on 06/01/2017.
//  Copyright © 2017 Kevin De Koninck. All rights reserved.
//

import Foundation
import UIKit

class Line {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    var lineWidth: CGFloat
    
    init(start: CGPoint, end: CGPoint, color: UIColor!, lineWidth: CGFloat) {
        self.start = start
        self.end = end
        self.color = color
        self.lineWidth = lineWidth
    }
}
