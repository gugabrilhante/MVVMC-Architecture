//
//  BaseViewController.swift
//  MVVMC-Architecture
//
//  Created by Natan on 10/11/18.
//  Copyright © 2018 Gustavo. All rights reserved.
//

import RxSwift
import UIKit

class BaseViewController<T>: UIViewController {

    let disposeBag = DisposeBag()

    private(set) var viewModel: T

    init(viewModel: T) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)

        configure(viewModel: viewModel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(viewModel: T) {}
}
