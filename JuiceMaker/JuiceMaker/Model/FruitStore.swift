//
//  JuiceMaker - FruitStore.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 과일 저장소 타입
class FruitStore: Equatable {
    var strawberryCount = 10
    var bananaCount = 10
    var pineappleCount = 10
    var kiwiCount = 10
    var mangoCount = 10
    
    static func == (lhs: FruitStore, rhs: FruitStore) -> Bool {
        lhs.strawberryCount == rhs.strawberryCount && lhs.bananaCount == rhs.bananaCount && lhs.pineappleCount == rhs.pineappleCount && lhs.kiwiCount == rhs.kiwiCount && lhs.mangoCount == rhs.mangoCount
    }
}
