//
//  PopupView.swift
//  HeaderPopupDemo
//
//  Created by admin on 5/13/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
class PopupView: UIView {
    
    @IBOutlet weak var neckView: UIView!
    
    @IBOutlet weak var coverButton: UIButton!
    weak var selectedButton: Button?
    
    var isOpen: Bool = false {
        didSet {
            coverButton.alpha = isOpen ? 0.6 : 0
            if !isOpen {
                self.removeFromSuperview()
                selectedButton?.isSelected = false
            }
        }
    }
    func layoutWhenButtonClick(_ button: UIButton){
        isOpen = true
        neckView.frame = CGRect(x: button.frame.midX, y: 0, width: button.frame.width, height: 20)
        selectedButton = button as! Button
    }
    @IBAction func clickCoverButton(_ sender: Any) {
        isOpen = false
    }
    
}
