//
//  ListModel.swift
//  MVVMC-Architecture
//
//  Created by Natan on 10/11/18.
//  Copyright © 2018 Gustavo. All rights reserved.
//

import Foundation

struct ListModel {
    var text: String?
    var data: String?

    init(text: String?, data:String?){
        self.text = text
        self.data = data
    }
}
