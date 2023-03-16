//
//  Store.swift
//  FruitMart
//
//  Created by YU WONGEUN on 2023/03/16.
//  Copyright © 2023 Giftbot. All rights reserved.
//

import Foundation

final class Store {
    var products: [Product]
    
    init(filename: String = "ProductData.json") {
        self.products = Bundle.main.decode(filename: filename, as: [Product].self)
    }
}
