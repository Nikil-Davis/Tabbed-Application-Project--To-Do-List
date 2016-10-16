//
//  colourUtility.swift
//  ToDoList
//
//  Created by nikil davis on 21/09/16.
//  Copyright © 2016 nikil davis. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func randomColor() -> UIColor {
        
        let randomRed = CGFloat(drand48())
        let randomGreen = CGFloat(drand48())
        let randomBlue = CGFloat(drand48())
        let randomAlpha = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue:randomBlue, alpha: randomAlpha)
    }
}

