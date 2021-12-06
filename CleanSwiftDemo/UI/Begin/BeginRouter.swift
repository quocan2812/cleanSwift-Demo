//
//  BeginRouter.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import Foundation
import UIKit

protocol BeginRouterProtocol: AnyObject {
    var viewController: BeginViewController? { get set }
    
    func  navigateToDetailViewController(withModel: CoinNameModel)

}

final class BeginRouter {

    weak var viewController: BeginViewController?
    
    private  var nav: UINavigationController? {
        viewController?.navigationController
    }
    
    init(viewController: BeginViewController) {
        self.viewController = viewController
    }

}

extension BeginRouter: BeginRouterProtocol {
    
    func  navigateToDetailViewController(withModel: CoinNameModel)  {
        let detailViewController = DetailConfig.makeViewController()
        detailViewController.detailCoin = withModel
        nav?.pushViewController(detailViewController, animated: true)
    }
    
}




