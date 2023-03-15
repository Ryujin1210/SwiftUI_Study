//
//  Home.swift
//  FruitMart
//
//  Created by Giftbot on 2020/03/02.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI

struct Home: View {
  var body: some View {
      VStack { // 새로 삽입된 VStack
          // 자동으로 들여쓰기가 된 기존 코드
          ProductRow(product: productSamples[0])
          ProductRow(product: productSamples[1])
          ProductRow(product: productSamples[2])
      }
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
      Home()
  }
}

