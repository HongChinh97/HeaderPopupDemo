//
//  Button.swift
//  HeaderPopupDemo
//
//  Created by admin on 5/13/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
class Button: UIButton {
    override var isSelected: Bool {
        didSet {
            backgroundColor = isSelected ? UIColor.white : UIColor.clear
            titleLabel?.textColor = isSelected ? UIColor.blue : UIColor.white
        }
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 10, height: 10))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
    }
    
    override convenience init(frame: CGRect) {
        self.init(frame: frame)
        isSelected = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isSelected = false
    }
}
