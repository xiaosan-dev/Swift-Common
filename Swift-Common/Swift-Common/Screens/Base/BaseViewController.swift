//
//  BaseViewController.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/17.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {

    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    deinit {
        print("\(String(describing: self.classForCoder)) deinit")
    }

}
