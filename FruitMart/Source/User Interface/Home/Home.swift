//
//  Home.swift
//  FruitMart
//
//  Created by Giftbot on 2020/03/02.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI

struct Home: View {
    let store: Store
  var body: some View {
      
      NavigationView {
          List(store.products) { Product in
              // NavigationLink(destination: Text("상세 정보"))
              NavigationLink(destination: ProductDetailView(product:Product)){
                  ProductRow(product: Product)
              }
          }.navigationBarTitle("과일마트")
      }
      
      
      
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
      Home(store: Store())
  }
}

