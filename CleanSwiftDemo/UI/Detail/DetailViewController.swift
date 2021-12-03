//
//  DetailViewController.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 02/12/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailCoin: CoinNameModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        
        // Do any additional setup after loading the view.
    }
    
    func setupView() {
        self.view.backgroundColor = UIColor.blue
        self.view.alpha = 0.75
        
        self.view.addSubview(detailShow)
        detailShow.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                detailShow.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                detailShow.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                detailShow.widthAnchor.constraint(equalToConstant: 200),
                detailShow.heightAnchor.constraint(equalToConstant: 300)
            ]
        )
    }
    
    private lazy var detailShow: DetailShowView = DetailShowView(nameCoin: detailCoin?.name ?? "No name")
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
