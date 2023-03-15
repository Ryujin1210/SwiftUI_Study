//
//  ProductRow.swift
//  FruitMart
//
//  Created by YU WONGEUN on 2023/03/12.
//  Copyright © 2023 Giftbot. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    let product: Product
    
    var body: some View {
        HStack { // 상품 이미지
            
            productImage
            productDescription
            
        }
        .frame(height: 150) // 전체 높이 150 설정
        .background(Color.primary.colorInvert())
        .cornerRadius(6) // 모서리 깎기
        .shadow(color: Color.primaryShadow, radius: 1, x:2, y:2) // 그림자 투명도 및 크기 설정 x는 시작점 y는 두께
        .padding(.vertical, 8)
    }
}

private extension ProductRow { // extension 확장
    
    var productImage: some View {
        Image(product.imageName)
        // Image("apple") // body에서 product 이미지를 호출하는 것으로 대체 가능
            .resizable()
            .scaledToFill()
            .frame(width: 140)
            .clipped()
    }


    var productDescription: some View {
        VStack(alignment: .leading) { // 상품명, 상품설명 + 정렬기준 leading
            // 상품명 부분에 작성
            // Text("백설공주 사과")
            Text(product.name)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 6)
            
            // 상품설명 부분에 작성
            // Text("달콤한 맛이 좋은 사과. 독은 없고 꿀만 가득!!")
            Text(product.description)
                .font(.footnote)
                .foregroundColor(.secondary)
            
            Spacer()
            footerView
        
        }
        .padding([.leading, .bottom], 12) // 하단, 좌측 여백
        .padding([.top, .trailing]) // 상단, 우측 여백
    }

    var footerView: some View {
        HStack(spacing: 0) { // HStack이 가진 자식 뷰사이의 간격 0으로 지정
            // 가격 정보
            Text("￦").font(.footnote) + // Text("2100").font(.headline)
            Text("\(product.price)")
            
            Spacer()
            
            //하트 버튼
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(Color.peach)
                .frame(width: 32, height: 32)
            
            Image(systemName: "cart")
                .foregroundColor(Color.peach)
                .frame(width: 32,height: 32)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productSamples[0])
    }
}

