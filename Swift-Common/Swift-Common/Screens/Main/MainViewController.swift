//
//  MainViewController.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/17.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit
import ReactorKit
import RxSwift
import RxCocoa

class MainViewController: BaseViewController {

    static func instance() -> MainViewController {
        let controller = MainViewController()
        controller.reactor = Reactor()
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: - Reactor
extension MainViewController: StoryboardView {

    typealias Reactor = MainReactor

    func bind(reactor: Reactor) {

    }
}
