//
//  GroupButtonView.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 03/12/2021.
//

import UIKit

class GroupButtonView: UIView {
    
    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    
    var clickfirstBtnClosure = {}
    
    
    class func instanceFromNib() -> GroupButtonView {
        return UINib(nibName: "GroupButtonView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! GroupButtonView
    }
    
    @IBAction func clickFirstBtn(_ sender: Any) {
        clickfirstBtnClosure()
    }
    
    
    @IBAction func clickSecondBtn(_ sender: Any) {
    }
}
