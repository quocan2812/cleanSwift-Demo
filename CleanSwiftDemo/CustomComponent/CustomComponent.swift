//
//  CustomComponent.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 07/02/2022.
//

import Foundation
import UIKit

//UILabel
class RoundedLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 20.0
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 2.0
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
}


