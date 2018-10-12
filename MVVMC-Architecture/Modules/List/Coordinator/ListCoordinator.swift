//
//  ListCoordinator.swift
//  MVVMC-Architecture
//
//  Created by Natan on 10/11/18.
//  Copyright © 2018 Gustavo. All rights reserved.
//

import Foundation

final class ListCoordinator: Coordinator {

    private weak var listViewController: ListViewController?
    private weak var navigationController: UINavigationControllerType?

    init(navigationController: UINavigationControllerType) {
        self.navigationController = navigationController
    }

    func start() {

        let viewModel = ListViewModel()
        let listViewController = ListViewController(viewModel: viewModel)

        navigationController?.pushViewController(listViewController, animated: true)

        self.listViewController = listViewController
    }

}
