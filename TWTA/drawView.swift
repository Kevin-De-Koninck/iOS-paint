//
//  drawView.swift
//  TWTA
//
//  Created by Kevin De Koninck on 06/01/2017.
//  Copyright © 2017 Kevin De Koninck. All rights reserved.
//

import UIKit

class drawView: UIView {

    var lines: [Line] = []
    var lastPoint: CGPoint!
    var drawColor = UIColor.black
    var lineWidth: CGFloat = 5
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lastPoint = (touches.first as AnyObject).location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let newPoint = (touches.first as AnyObject).location(in: self)
        lines.append(Line(start: lastPoint, end: newPoint, color: drawColor, lineWidth: lineWidth))
        lastPoint = newPoint
        
        self.setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        
        context?.beginPath()
        context?.setLineWidth(lineWidth)
        context?.setLineCap(.round)
        
        for line in lines {
            context!.setLineWidth(line.lineWidth)
            context?.move(to: CGPoint(x: line.start.x, y: line.start.y))
            context?.addLine(to: CGPoint(x: line.end.x, y: line.end.y))
            context?.setStrokeColor(line.color.cgColor)
            context?.strokePath()
        }
    }


}
