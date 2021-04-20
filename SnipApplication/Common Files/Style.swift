//
//  File.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/19/21.
//

import Foundation
import UIKit

extension UIView{

    func StyleButton(){
        layer.cornerRadius = 30
        layer.borderWidth = 2
        layer.borderColor = UIColor.gray.cgColor
    }
    
    func styleTextField(){
        let bottomLine = CALayer.init()
        bottomLine.frame = CGRect(x: 0, y: layer.frame.height, width: layer.frame.width, height: 3)
        bottomLine.backgroundColor = UIColor.gray.cgColor
//        bottomLine.backgroundColor?.alpha
        layer.addSublayer(bottomLine)
    }
    
    
    
    
}


