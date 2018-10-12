//
//  ListViewModel.swift
//  MVVMC-Architecture
//
//  Created by Natan on 10/11/18.
//  Copyright © 2018 Gustavo. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

protocol ListViewModelType {
    var rx_fillList: Driver<[ListModel]>{ get }
}

final class ListViewModel: ListViewModelType {

    var rx_fillList: Driver<[ListModel]>{
        return ListViewModel.createFillListObservable()
    }

}

extension ListViewModel {
    fileprivate static func createFillListObservable() -> Driver<[ListModel]>{
        return Observable
            .just(mockListModel())
            .asDriver(onErrorJustReturn: [])
    }
}

func mockListModel() -> [ListModel]{
    var list = [ListModel]()
    for x in 1...10{
        list.append(ListModel(text: "text \(x)", data: "0\(x)"))
    }
    return list
}
