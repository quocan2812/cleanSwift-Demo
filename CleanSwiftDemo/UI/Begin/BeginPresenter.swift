//
//  BeginPresenter.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import Foundation

final class BeginPresenter {
    weak var viewController: BeginViewController?
    init(viewController: BeginViewController) {
        self.viewController = viewController
    }
    func showListCoin(list: [CoinNameModel]) {
        self.viewController?.dislayDataWithList(listData: list)
    }
    
    func changeBackgroundView(flag: Bool) {
        
        self.viewController?.displayBackground(flag: flag)
        
    }
}
