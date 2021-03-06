//
//  BeginInteractor.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import Foundation

protocol BeginInteractorProtocol {
    func getListCoin()
    func clickFirstButtonInButtonView()
    
}

final class BeginInteractor {
    private let presenter: BeginPresenterProtocol
    private let worker: BeginWorker
    private var index: Int?
    private var listCoins: [CoinNameModel]?
    private var backGroundFlag = false
    
    init(presenter: BeginPresenter, worker: BeginWorker) {
        self.presenter = presenter
        self.worker = worker
    }
 
}

extension BeginInteractor: BeginInteractorProtocol {
    func getListCoin() {
        self.worker.getData { listCoins in
        self.presenter.showListCoin(list: listCoins)
        }
    }
    
    func clickFirstButtonInButtonView() {
        //calculate something
        backGroundFlag = !backGroundFlag
        self.presenter.changeBackgroundView(flag: backGroundFlag)
        
        
    }
}
