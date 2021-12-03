//
//  DetailShowView.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 02/12/2021.
//

import UIKit

class DetailShowView: UIView {
    
    private var nameCoin: String
    
    init(nameCoin:String) {
        self.nameCoin = nameCoin
        super.init(frame: .zero)
        setupView()
        
    }
    
    required init?(coder: NSCoder) { nil }
    
    func setupView(){
        
        addSubview(nameCoinLabel)
        nameCoinLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                nameCoinLabel.topAnchor.constraint(equalTo: self.topAnchor),
                nameCoinLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                nameCoinLabel.widthAnchor.constraint(equalTo: self.widthAnchor),
                nameCoinLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ]
        )

    }
    
    private lazy var nameCoinLabel: UILabel = {
        let label = UILabel()
        label.text = nameCoin
        label.textAlignment = .center
        label.font = label.font.withSize(30)
        label.textColor = UIColor.systemPink
        return label
    }()

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
