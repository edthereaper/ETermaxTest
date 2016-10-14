//
//  Colors.swift
//  Etermax
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    enum ETColor: UInt32 {
        case magenta = 0x00BBA7FF
        case pink = 0xED497DFF
    }

    convenience init(rgb: UInt32) {
        let red   = CGFloat((rgb >> 24) & 0xff) / 255.0
        let green = CGFloat((rgb >> 16) & 0xff) / 255.0
        let blue  = CGFloat((rgb >>  8) & 0xff) / 255.0
        let alpha = CGFloat((rgb      ) & 0xff) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    convenience init(customColor: ETColor){
        self.init(rgb: customColor.rawValue)
    }
}
