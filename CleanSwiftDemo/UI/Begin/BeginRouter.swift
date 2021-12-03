//
//  BeginRouter.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import Foundation
import UIKit

final class BeginRouter {
    
    weak var viewController: BeginViewController?
    
    private  var nav: UINavigationController? {
        viewController?.navigationController
    }
    
    init(viewController: BeginViewController) {
        self.viewController = viewController
    }
    
    func  navigateToDetailViewController(withModel: CoinNameModel)  {
        let detailViewController = DetailConfig.makeViewController()
        detailViewController.detailCoin = withModel
        nav?.pushViewController(detailViewController, animated: true)
    }
    
}


