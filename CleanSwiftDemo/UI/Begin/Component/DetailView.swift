//
//  DetailView.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import UIKit

class DetailView: UIView {
    private let firstDetail: String
    private let secondDetailText: String
    
    init(
        firstText: String,
        secondText: String) {
        self.firstDetail = firstText
        self.secondDetailText = secondText
       
        super.init(frame: .zero)
        self.backgroundColor = UIColor.blue
        
        setupView()
    }
    
    required init?(coder: NSCoder) { nil }
    
    private func setupView() {
        addSubview(firstLabel)
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(secondLabel)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstLabel.topAnchor.constraint(equalTo: self.topAnchor),
            firstLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            firstLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0),
            firstLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7),
            firstLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            
            secondLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            secondLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0),
            secondLabel.topAnchor.constraint(equalTo: self.topAnchor),
            secondLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3)
        ])
        
    }
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.text = firstDetail
        label.textColor = UIColor.red
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.text = secondDetailText
        label.textColor = UIColor.green
        label.textAlignment = .center
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
