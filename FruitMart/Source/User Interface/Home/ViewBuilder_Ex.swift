//
//  ViewBuilder_Ex.swift
//  FruitMart
//
//  Created by YU WONGEUN on 2023/03/19.
//  Copyright © 2023 Giftbot. All rights reserved.
//

import SwiftUI

struct ViewBuilder_Ex: View {
    var body: some View {
        
        MyVStack { // 좌측 정렬, 뷰의 간격 4
            Color.blue
                .frame(width: 100, height: 20)
            Text("Hello SWIFTUI")
                .font(.title)
            Rectangle()
                .frame(width: 250, height: 40)
            Text("1")
        }
         
        
        // 뷰의 최대 갯수
        /*
        VStack {
            Text("Ryu")
            Text("Ryu")
            Text("Ryu")
            Text("Ryu")
            Text("Ryu")
            Text("Ryu")
            Text("Ryu")
            Text("Ryu")
            Text("Ryu")
            Text("Ryu") // 10번째
            Text("Ryu") // 11번째 오류
        }
        */
        
        
        
    }
}

/*
// 커스텀 함수 빌더
@resultBuilder  // 함수 빌더로 선언해주는 속성 추가
struct EvenNumbers { // @ViewBuilder처럼 적용될 이름, 이경우 @EvenNumbers
    static func buildBlock(_ numbers: Int...) -> [Int] { // Int...
        numbers.filter { $0.isMultiple(of: 2)}
    }
    static func buildBlock(_ numbers: [Int]...) -> [Int] { // [Int]
    }
}

// 연산 프로퍼티
@EvenNumbers var computedProperty: [Int] {
    1
    2
}
 
 @EvenNumbers var computedProperty: [Int] {
     [1, 2, 3, 4]
 }
 // 결과: [2, 4]

 // 함수
@EvenNumbers
func annotatedFunction(_ numbers: [Int]) -> [Int] {
    numbers.filter { $0 > 2 } // 입력값을 전처리한 후 buildBlock으로 전달
}
annotatedFunction([1, 2, 3, 4]) // 함수 호출 시 입력하는 인수가 기본 입력 값

// 함수의 매개변수
func annotatedParameter(@EvenNumbers _ content: () -> [Int]) -> [Int] {
    content() // 함수를 실행했을 때 buildBlock 함수 호출
}
annotatedParameter { 1; 2; 3; 4} // 한 줄에 여러 값 입력 시 세미콜론 사용
 */



// @ViewBuilder 사용하여 커스텀 뷰 ?
struct MyVStack<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    // VStack의 생성자 기본 값 설정
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            content
        }
    // enviroment 설정
        Text("Hello, SwiftUI").frame(width: 100)
            .environment(\.font, .title) // 1
            .environment(\.lineLimit, 1) // 2
            .environment(\.minimumScaleFactor, 0.5) // 3
        
    }
}

struct ViewBuilder_Ex_Previews: PreviewProvider {
    static var previews: some View {
        
        ViewBuilder_Ex()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
        ContentView()
    }
}

// 프리뷰 갱신
/*
// Top Level
struct ContentView: View {
    // Struct Implementation
    var body: some View {
        // computed Property
    }
    func someMethod() {
        // Method
    }
    // Struct Implementation
}
// Top Level
func someFunction() {
    // Function
}
*/

// LTR, RTL
struct ContentView: View {
    @Environment(\.layoutDirection) var layoutDirection
    
    var body: some View {
        /*
        if layoutDirection == .leftToRight {
            return Text("Left to Right")    // LTR 언어 사용 환경에서 출력
        } else {
            return Text("Right to Left")    // RTL 언어 사용 환경에서 출력
        }
        */
        MySubview()
            .environment(\.myEnvironment, 10)   // myEnvironment에 10이라는 값 설정
    }
}
struct MySubview: View {
    @Environment(\.myEnvironment) var myValue
    var body: some View {
        Text("\(myValue)")  // 결과 10
    }
}

// custom environment
struct MyEnvironmentKey: EnvironmentKey {
    static let defaultValue: Int = 0
}

extension EnvironmentValues {
    var myEnvironment: Int {
        get { self[MyEnvironmentKey.self]}
        set { self[MyEnvironmentKey.self] = newValue}
    }
}
