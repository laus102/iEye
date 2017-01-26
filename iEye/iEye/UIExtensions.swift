//
//  UIExtensions.swift
//  iEye
//
//  Created by Brendan Lau on 1/23/17.
//  Copyright © 2017 Incipia. All rights reserved.
//

import Foundation
import UIKit


enum VerticalDiagramDirection: String {
    case left = "Left"
    case right = "Right"
    
    var next: VerticalDiagramDirection {
        return self == .left ? .right : .left
    }
}

enum HorizontalDiagramDirection: String {
    case bottom = "Bottom"
    case top = "Top"
    
    var next: HorizontalDiagramDirection {
        return self == .bottom ? .top : .bottom
    }
}

extension CGFloat {
    init(rgbValue: Int) {
        self.init(CGFloat(rgbValue)/255.0)
    }
}

extension UIColor {
    convenience init(r: Int, g: Int, b: Int, a: CGFloat) {
        self.init(red: CGFloat(rgbValue: r), green: CGFloat(rgbValue: g), blue: CGFloat(rgbValue: b), alpha: a)
    }
    
    open class var iEyeGreen: UIColor {
        return UIColor(r: 134, g: 196, b: 131, a: 1.0)
    }
    
    open class var iEyeRed: UIColor {
        return UIColor(r: 217, g: 108, b: 103, a: 1.0)
    }
    
}


