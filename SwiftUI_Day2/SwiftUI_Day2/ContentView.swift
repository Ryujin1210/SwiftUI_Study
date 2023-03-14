//
//  ContentView.swift
//  SwiftUI_Day2
//
//  Created by YU WONGEUN on 2023/03/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            // MARK: - ZStack 겹치는 지 확인
            /*
            Rectangle()
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 150, height: 150)
                .offset(x: 40, y: 40) // x축과 y축으로 40포인트 이동
             */
            
            // MARK: - HStack alignment .top 설정 시 height 값에 맞게 컨테이너 변경
            /*
            Rectangle()
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 150, height: 550)
             */
            //MARK: - 스택에 뷰 수식어 활용
            /*
            Text("HStack").font(.title).foregroundColor(Color.blue)
            Text("은 뷰를 가로로 배열 합니다")
            Text("!")
            */
            
        }
        .padding()
        
        //MARK: - Spacer
        /*
        HStack {
            
            Spacer().backgroundStyle(.blue) // 아무런 출력 없음
                .frame(width: 100) // spacer의 길이 제한
            Text("Spacer").font(.title).background(Color.yellow)
            

        }.background(Color.blue)
        */
        Spacer().background(Color.blue) // 공간 최대 확장 , 시각적 요소 가능
        
       
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
