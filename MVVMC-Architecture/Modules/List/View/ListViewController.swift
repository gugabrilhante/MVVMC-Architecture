//
//  ListViewController.swift
//  MVVMC-Architecture
//
//  Created by Natan on 10/11/18.
//  Copyright © 2018 Gustavo. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ListViewController: BaseViewController<ListViewModelType> {

    @IBOutlet weak var tableView: UITableView!

    private func bindToViewModel(){
        viewModel.rx_fillList.drive(tableView.rx.items(cellIdentifier: "cell", cellType: TableViewCell.self)) { (row, element, cell) in
            cell.setupCell(listModel: element)
        }
        .disposed(by: disposeBag)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        bindToViewModel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
