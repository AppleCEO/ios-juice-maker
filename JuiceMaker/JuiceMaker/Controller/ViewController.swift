//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit
import ComposableArchitecture

class ViewController: UIViewController {
    let viewStore = Store(initialState: JuiceMaker.State(), reducer: JuiceMaker())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}


