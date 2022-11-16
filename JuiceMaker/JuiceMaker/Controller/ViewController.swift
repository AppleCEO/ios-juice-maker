//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit
import ComposableArchitecture
import Combine

class ViewController: UIViewController {
    @IBOutlet weak var strawberryCountLabel: UILabel!
    @IBOutlet weak var bananaCountLabel: UILabel!
    @IBOutlet weak var pineappleCountLabel: UILabel!
    @IBOutlet weak var kiwiCountLabel: UILabel!
    @IBOutlet weak var mangoCountLabel: UILabel!
    @IBOutlet weak var strawBaJuiceOrderButton: UIButton!
    @IBOutlet weak var mangKiJuiceOrderButton: UIButton!
    @IBOutlet weak var strawberryJuiceOrderButton: UIButton!
    @IBOutlet weak var bananaJuiceOrderButton: UIButton!
    @IBOutlet weak var pineappleJuiceOrderButton: UIButton!
    @IBOutlet weak var kiwiJuiceOrderButton: UIButton!
    @IBOutlet weak var mangoJuiceOrderButton: UIButton!
    
    var cancellables: Set<AnyCancellable> = []
    let viewStore: ViewStoreOf<JuiceMaker> = ViewStore(Store(initialState: JuiceMaker.State(), reducer: JuiceMaker()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapFruitStoreCount()
        mapJuiceMakeButton()
        
    }

    private func mapFruitStoreCount() {
        self.viewStore.publisher.fruitStore.strawberryCount
            .map { "\($0)" }
            .assign(to: \.text, on: strawberryCountLabel)
            .store(in: &self.cancellables)
        self.viewStore.publisher.fruitStore.bananaCount
            .map { "\($0)" }
            .assign(to: \.text, on: bananaCountLabel)
            .store(in: &self.cancellables)
        self.viewStore.publisher.fruitStore.pineappleCount
            .map { "\($0)" }
            .assign(to: \.text, on: pineappleCountLabel)
            .store(in: &self.cancellables)
        self.viewStore.publisher.fruitStore.kiwiCount
            .map { "\($0)" }
            .assign(to: \.text, on: kiwiCountLabel)
            .store(in: &self.cancellables)
        self.viewStore.publisher.fruitStore.mangoCount
            .map { "\($0)" }
            .assign(to: \.text, on: mangoCountLabel)
            .store(in: &self.cancellables)
    }

    private func mapJuiceMakeButton() {
        strawBaJuiceOrderButton.addTarget(self, action: #selector(self.strawBaJuiceOrderButtonTap), for: .touchUpInside)
        mangKiJuiceOrderButton.addTarget(self, action: #selector(self.mangKiJuiceOrderButtonTap), for: .touchUpInside)
        strawberryJuiceOrderButton.addTarget(self, action: #selector(self.strawberryJuiceOrderButtonTap), for: .touchUpInside)
        bananaJuiceOrderButton.addTarget(self, action: #selector(self.bananaJuiceOrderButtonTap), for: .touchUpInside)
        pineappleJuiceOrderButton.addTarget(self, action: #selector(self.pineappleJuiceOrderButtonTap), for: .touchUpInside)
        kiwiJuiceOrderButton.addTarget(self, action: #selector(self.kiwiJuiceOrderButtonTap), for: .touchUpInside)
        mangoJuiceOrderButton.addTarget(self, action: #selector(self.mangoJuiceOrderButtonTap), for: .touchUpInside)
    }
    
    @objc private func strawBaJuiceOrderButtonTap() {
        self.viewStore.send(.makeStrawBaJuice)
    }
    @objc private func mangKiJuiceOrderButtonTap() {
        self.viewStore.send(.makeManKiJuice)
    }
    @objc private func strawberryJuiceOrderButtonTap() {
        self.viewStore.send(.makeStrawberryJuice)
    }
    @objc private func bananaJuiceOrderButtonTap() {
        self.viewStore.send(.makeBananaJuice)
    }
    @objc private func pineappleJuiceOrderButtonTap() {
        self.viewStore.send(.makePineappleJuice)
    }
    @objc private func kiwiJuiceOrderButtonTap() {
        self.viewStore.send(.makeKiwiJuice)
    }
    @objc private func mangoJuiceOrderButtonTap() {
        self.viewStore.send(.makeMangoJuice)
    }
}


