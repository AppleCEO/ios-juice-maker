//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation
import ComposableArchitecture

struct JuiceMaker: ReducerProtocol {
    struct State: Equatable {
        var alert: String?
        var fruitStore = FruitStore()
    }
    
    enum Action: Equatable {
        case alertDismissed
        case makeStrawberryJuice
        case makeBananaJuice
        case makeKiwiJuice
        case makePineappleJuice
        case makeStrawBaJuice
        case makeMangoJuice
        case makeManKiJuice
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .alertDismissed:
            state.alert = nil
            return .none
        case .makeStrawberryJuice:
            if state.fruitStore.strawberryCount >= 16 {
                state.fruitStore.strawberryCount -= 16
            } else {
                state.alert = "딸기쥬스를 만들기에 과일 양이 부족합니다."
            }
            return .none
        case .makeBananaJuice:
            if state.fruitStore.bananaCount >= 2 {
                state.fruitStore.bananaCount -= 2
            } else {
                state.alert = "바나나쥬스를 만들기에 과일 양이 부족합니다."
            }
            return .none
        case .makeKiwiJuice:
            if state.fruitStore.kiwiCount >= 3 {
                state.fruitStore.kiwiCount -= 3
            } else {
                state.alert = "키위쥬스를 만들기에 과일 양이 부족합니다."
            }
            return .none
        case .makePineappleJuice:
            if state.fruitStore.pineappleCount >= 2 {
                state.fruitStore.pineappleCount -= 2
            } else {
                state.alert = "파인애플쥬스를 만들기에 과일 양이 부족합니다."
            }
            return .none
        case .makeStrawBaJuice:
            if state.fruitStore.strawberryCount >= 10 && state.fruitStore.bananaCount >= 1 {
                state.fruitStore.strawberryCount -= 10
                state.fruitStore.bananaCount -= 1
            } else {
                state.alert = "딸바쥬스를 만들기에 과일 양이 부족합니다."
            }
            return .none
        case .makeMangoJuice:
            if state.fruitStore.mangoCount >= 3 {
                state.fruitStore.mangoCount -= 3
            } else {
                state.alert = "망고쥬스를 만들기에 과일 양이 부족합니다."
            }
            return .none
        case .makeManKiJuice:
            if state.fruitStore.mangoCount >= 2 && state.fruitStore.kiwiCount >= 1 {
                state.fruitStore.mangoCount -= 2
                state.fruitStore.kiwiCount -= 1
            } else {
                state.alert = "망키쥬스를 만들기에 과일 양이 부족합니다."
            }
            return .none
        }
    }
}
