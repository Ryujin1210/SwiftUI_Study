//
//  Button_Pr.swift
//  FruitMart
//
//  Created by YU WONGEUN on 2023/03/14.
//  Copyright © 2023 Giftbot. All rights reserved.
//

import SwiftUI

struct Button_Pr: View {
  var body: some View {
      VStack {
          HStack(spacing: 20) {
              // button 1
              Button("Button") {
                  print("Button1")
              }
              // button 2
              Button(action: {print("Button2")}) {
                  Text("Button")
                      .padding()
                      .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
              }
              // button 3
              Button(action: {print("Button3")}) {
                  Circle()
                      .stroke(lineWidth: 2)
                      .frame(width: 80, height: 80)
                      .overlay(Text("Button"))
              }
              .accentColor(.green)
          } // HStack
          
          HStack(spacing: 20) {
              // button 1
              Button(action: {print("Button1")}) {
                  Image("SwiftUI")
                      .renderingMode(.original)
                      .resizable()
                      .frame(width: 80, height: 80)
              }
              // button 2
              Button(action: {print("Button2")}) {
                  Image(systemName: "play.circle")
                      .imageScale(.large)
                      .font(.largeTitle)
              }
          } // HStack2
          .padding()
          
          VStack(spacing: 20) {
              
              Button("DefaultButtonStyle") {}
                  .buttonStyle(DefaultButtonStyle())
              
              Button("BorderlessButtonStyle") {}
                  .buttonStyle(BorderlessButtonStyle())
              
              Button("PlainButtonStyle") {}
                  .buttonStyle(PlainButtonStyle())
          } // HStack2
          
          Image(systemName: "person.circle").imageScale(.large)
              .onTapGesture {
                  print("onTapGesture")
              }
          Button(action: {print("버튼")}) {
              Image(systemName: "person.circle").imageScale(.large)
          }
      } // VStack
      
  }
}


struct Button_Pr_Previews: PreviewProvider {
    static var previews: some View {
        Button_Pr()
    }
}
