//
//  BeginConfig.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import Foundation
import UIKit

final class BeginConfig {
    
    static func makeViewController() -> BeginViewController {
        let beginViewController = BeginViewController()
        let router = BeginRouter(viewController: beginViewController)
        let presenter = BeginPresenter(viewController: beginViewController)
        let worker = BeginWorker()
        let interactor = BeginInteractor(presenter: presenter, worker: worker)
        beginViewController.interactor = interactor
        beginViewController.router = router
        return beginViewController
            
    }
}
