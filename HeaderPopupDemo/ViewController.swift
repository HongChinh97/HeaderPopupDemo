//
//  ViewController.swift
//  HeaderPopupDemo
//
//  Created by admin on 5/13/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var headerButtons: [Button]!
    
    @IBOutlet weak var popupView: PopupView!
    
    @IBOutlet weak var headerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickHeaderButton(_ sender: Button) {
        headerButtons.forEach{$0.isSelected = false}
        sender.isSelected = !sender.isSelected
        addPopupView()
        popupView.layoutWhenButtonClick(sender)
    }
    private func addPopupView() {
        view.addSubview(popupView)
        //day popview xuong duoi button
        //        popupView.fill(left: 0,right: nil, top: 0, botton: -100)
        popupView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
    }
    
}

