//
//  BeginWorker.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import Foundation

final class BeginWorker {
    
    func getData(completion: @escaping ([CoinNameModel]) -> Void) {
        
        let coins = ["Bnb", "Ht", "Mx", "Gt", "Kcs"]
        let prices = [650, 9.9, 3.2, 6.8, 28]
        var names: [CoinNameModel] = []
        for i in 0...coins.count - 1 {
            let name = CoinNameModel(name: coins[i], price:prices[i])
            names.append(name)
        }
        completion(names)
    }
    
}
