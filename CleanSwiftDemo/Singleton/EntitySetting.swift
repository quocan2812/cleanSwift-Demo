//
//  EntitySetting.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 13/01/2022.
//

import Foundation
import UIKit

class EntitySetting {
    static var shared: EntitySetting {
        guard let instance = instance else {
            let newInstance = EntitySetting()
            self.instance = newInstance
            return newInstance
        }
        return instance
    }
    
    private static var instance: EntitySetting?
    
    static func dispose() {
        instance = nil
    }
}
