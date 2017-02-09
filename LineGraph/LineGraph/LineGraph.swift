//
//  LineGraph.swift
//  LineGraph
//
//  Created by Fredrick Ohen on 10/28/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

import UIKit

class LineGraph: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        UIColor.red.setStroke()
        let line = UIBezierPath ()
        line.move(to: CGPoint(x:0,y:700))
       // line.addLine(to: CGPoint(x:50, y:550))
        line.addLine(to: CGPoint(x:550, y:1))
        line.lineWidth = 12
        
        line.stroke()

    }
    

}
