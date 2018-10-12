//
//  ContainerViewController.swift
//  MVVMC-Architecture
//
//  Created by Natan on 10/11/18.
//  Copyright © 2018 Gustavo. All rights reserved.
//
final class ContainerViewController {
    let parentViewController: UIViewControllerType
    let containerView: UIViewType

    init(parentViewController: UIViewControllerType, containerView: UIViewType) {
        self.parentViewController = parentViewController
        self.containerView = containerView
    }

    func addChildController(_ childController: UIViewControllerType) {
        parentViewController.addFillerChildViewController(childController, toView: containerView)
    }
}
