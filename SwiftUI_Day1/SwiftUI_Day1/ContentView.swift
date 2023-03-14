//
//  ContentView.swift
//  SwiftUI_Day1
//
//  Created by YU WONGEUN on 2023/03/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           /* Text("폰트 굵기 설정")
                .font(.title)
                .fontWeight(.black) // 굵기
            
            Text("글자색은 foreground, 배경색은 background")
                .foregroundColor(.yellow)
                .padding() // 여백
                .background(Color.blue)
                .cornerRadius(15)
            
            Text("커스텀 폰트")
                .font(.custom("Menlo", size: 16))
                .bold()     // 볼드체
                .italic()   // 이탤릭체
                .underline()// 밑줄
                .strikethrough()  // 취소선
            
            Text("라인 수 제한과 \n 텍스트 정렬 기능 \n 이건 안 보입니다 ")
                .lineLimit(2) // 라인 수 제한
                .multilineTextAlignment(.trailing) // 다중 행 문자열의 정렬 방식
                .fixedSize() // 주어진 공간의 크기가 작아도 생략하지 않고 표현되도록 설정
            
            (Text("자간과 기준선").kerning(8) // 자간
             + Text(" 조정도 쉽게 가능").baselineOffset(8)) // 기준선
            .font(.system(size: 16))
            
            //MARK: - 수식어 적용 순서 유의
            
            Text("SwiftUI")
                .font(.title)   // Text - 호출자의, 타입이 Text이므로 다시 Text 반환
                .bold()         // Text
                .padding()      // View
            
            Text("SwiftUI")
                .bold()         // Text
                .padding()      // View
                .font(.title)   // View - 동일한 font 수식어를 호출해도 호출자에 따라 변환 타입이 다릅니다.
         
            Text("SwiftUI")
                .padding() // 왜 오류 안생기지 1
                .bold()
                .font(.title)
            
            Text("SwiftUI") // 왜 오류 안생기지 2
                .padding()
                .font(.title)
                .bold()
        
            Text("🥰😊")
              .font(.largeTitle)
              .background(Color.yellow)
              .padding()

            Text("🥰😊")
             .font(.largeTitle)
             .padding()
             .background(Color.yellow)
            */
        }
        .padding()
        
        HStack(spacing: 30) {
            
            //MARK: - 이미지(Image)
            /*
            Image("SwiftUI").resizable()
            Image("SwiftUI")
                .resizable()
                .frame(width: 50, height: 50)
            Image("SwiftUI")
                .resizable()
                .frame(width: 200, height: 200)
             */
            
            //MARK: resizable
            /*
            Image("SwiftUI") // capInset 매개변수에 늘어날 영역지정. 생략 시 stretch 적용
                .resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0))
                .frame(width: 150, height: 150)
            
            Image("SwiftUI")
                .resizable(resizingMode: .tile)
                .frame(width: 150, height: 150)
             */
            
            /* UIKit의 Scale To Fill이 기본값으로 적용
            Image("SwiftUI").resizable().frame(width: 100, height: 150)
            
            Image("SwiftUI").resizable()
                .scaledToFit()  // UIKit의 Aspect Fit 효과
                .frame(width: 100, height: 150)
            
            Image("SwiftUI").resizable()
                .scaledToFill() // UIKit의 Aspect Fill 효과
                .frame(width: 100, height: 150)
                .clipped()      // UIView의 clipsToBounds 활성화 효과. 프레임을 벗어나는 이미지 제거
             */
            
            //MARK: - AspectRatio
            
            // scaledToFit 콘텐츠 모드를 적용한뒤, 너비가 높이보다 1.6배의 비율을 가지도록 조정
            /*
            Image("SwiftUI").resizable()
                .aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fit)
                .frame(width: 150, height: 150)
            
            // scaledToFill 콘텐츠 모드를 적용한뒤, 너비가 높이보다 0.7배의 비율을 가지도록 조정
            Image("SwiftUI").resizable()
                .aspectRatio(0.7, contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
            */
            
            //MARK: - ClipShape
            
            /*
            Image("SwiftUI").clipShape(Circle())
            Image("SwiftUI").clipShape(
                Rectangle().inset(by: 10)) // 이미지 크기보다 사방으로 10씩 줄인 사각형
            Image("SwiftUI").clipShape(
                Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110))) // 크기와 위치를 직접 지정한 타원
            */
            
            // MARK: - RenderingMode
            
            /*
            Image("SwiftUI") // 생략 시스템이 결정
            Image("SwiftUI").renderingMode(.original) // 원본 유지
            Image("SwiftUI").renderingMode(.template)
            */
            
            // MARK: - SF Symbol
            
            Image(systemName: "star.circle")
            Image(systemName: "star.circle.fill")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
