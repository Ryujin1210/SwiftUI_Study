//
//  ContentView.swift
//  SwiftUI_day3
//
//  Created by YU WONGEUN on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: - ZStack과 HStack의 조합 - 둥근 모양
        /*
        VStack {
            Text("도형만들기").font(.largeTitle).fontWeight(.heavy)
            Text("둥근모양").font(.title)
            Text("각진모양").font(.title)
            
            HStack {
                Text("둥근모양").font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle().frame(height: 10)
                
                HStack {
                    Circle().fill(Color.yellow) // 원
                    Ellipse().fill(Color.green) // 타원
                    Capsule().fill(Color.orange) // 캡슐
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray) //둥근 모서리 사각형
                }
            }
        }
        .padding()
        */
        //MARK: - Overlay 수식어
        /*
        HStack {
            Rectangle().fill(Color.green).frame(width: 150, height: 150)
                .overlay(
                    Rectangle().fill(Color.yellow) // 크기를 정하지 않으면 (부모) 초록색 사각형과 동일
                )
        }
         */
        //MARK: - Background 수식어
        /*
        HStack {
            Rectangle().fill(Color.yellow).frame(width: 150, height: 150)
                .background(Rectangle().fill(Color.green).offset(x: 40))
        }
        */
        //MARK: - Alignment
        /*
        Circle()
            .fill(Color.yellow.opacity(0.7)) //배경으로 추가된 뷰를 확인하기 위해 투명도 설정
            .frame(width: 250, height: 250)
        // overlay
            .overlay(Text("Joystick").font(.largeTitle))
            .overlay(Image(systemName: "arrow.up").font(.title).padding(),alignment: .top)
            .overlay(Image(systemName: "arrow.left").font(.title).padding(), alignment: .leading)
            .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(),alignment: .topTrailing)
            // background
            .background(Image(systemName: "arrow.down").font(.title),alignment: .bottom)
            .background(Image(systemName: "arrow.right").font(.title),alignment: .trailing)
         */
        //MARK: - ZStack 으로 alignment 같게 구현
        ZStack {
            VStack {
                Spacer()
                Image(systemName: "arrow.down").font(.title).padding()
            }
            HStack {
                Spacer()
                Image(systemName: "arrow.right").font(.title).padding()
            }
            Circle()
                .fill(Color.yellow.opacity(0.8))
                .frame(width: 250, height: 250)
            
            Text("Joystick").font(.largeTitle)
            
            ZStack(alignment: .topTrailing) {
                Color.clear
                Image(systemName: "arrow.up.right.circle.fill").font(.title)
            }
            VStack {
                Image(systemName: "arrow.up").font(.title).padding()
                Spacer()
            }
            HStack {
                Image(systemName: "arrow.left").font(.title).padding()
                Spacer()
            }
            
        }.frame(width: 250, height: 250)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
