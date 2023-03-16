//
//  Navigation_Pr.swift
//  FruitMart
//
//  Created by YU WONGEUN on 2023/03/14.
//  Copyright © 2023 Giftbot. All rights reserved.
//

import SwiftUI

struct Navigation_Pr: View {
    let fruits = ["사과", "배", "포도", "바나나"]
    let drinks = ["물", "우유", "탄산수"]
    var body: some View {
        
        // MARK: - 내비게이션 바 아이템
        /*
         let leadingItem = Button(action: { print("Leading item tapped")}) {
         Image(systemName: "bell").imageScale(.large)
         }
         let trailingItem = Button(action: { print("Trailing")}) {
         Image(systemName: "gear").imageScale(.large)
         }
         
         return NavigationView {
         Image("SwiftUI")
         .navigationBarTitle("내비게이션 타이틀")
         .navigationBarItems(leading: leadingItem, trailing: trailingItem)
         
         } //navigationView
         */
        
        // MARK: - 내비게이션 링크
        /*
         let destination = Text("Destination View")
         .navigationBarBackButtonHidden(true)
         
         return NavigationView {
         NavigationLink(destination: destination) {
         Image("SwiftUI")
         }
         .navigationBarTitle("내비게이션 링크")
         // .navigationBarHidden(true)
         } // Navigation View
         */
        // MARK: - 내비게이션 뷰 스타일
        /*
         NavigationView {
         VStack(spacing: 20) {
         NavigationLink(destination: Text("디테일 뷰 영역").font(.largeTitle)) {
         Text("마스터 뷰 메뉴1").font(.title)
         }
         
         NavigationLink(destination: Text("디테일 뷰 영역").font(.largeTitle)) {
         Text("마스터 뷰 메뉴2").font(.title)
         }
         }
         .navigationBarTitle("내비게이션 뷰 스타일")
         
         Text("디테일 뷰").font(.largeTitle)
         } // NavigationView
         // .navigationViewStyle(StackNavigationViewStyle()) 명시적으로 지정
         */
        // MARK: - 리스트
        /*
         VStack {
         Text("1")
         Text("2")
         Text("3")
         Text("4")
         Text("5")
         Text("6")
         Text("7")
         Text("8")
         Text("9")
         Text("10")
         }
         
         List {
         Text("1")
         Text("2")
         Text("3")
         Text("4")
         Text("5")
         Text("6")
         Text("7")
         Text("8")
         Text("9")
         Text("10")
         }
         */
        // MARK: - 정적 콘텐츠
        /*
         List {
         Text("List").font(.largeTitle)
         Image("SwiftUI")
         Circle().frame(width: 100, height: 100)
         Color(.red).frame(width: 100, height: 100)
         }
         */
        // MARK: - 동적 콘텐츠
        /*
         List {
         Text("Fruits").font(.largeTitle)
         ForEach(fruits, id: \.self) {
         Text($0)
         }
         
         Text("Drinks").font(.largeTitle)
         ForEach(drinks, id: \.self) {
         Text($0)
         }
         }
         */
        // MARK: - 섹션(Section)
        /*
         let titles = ["Fruits", "Drinks"]
         let data = [fruits, drinks]
         
         if #available(iOS 14.0, *) {
         return List {
         ForEach(data.indices) { index in // data에 포함된 횟수만큼 섹션 생성
         Section(
         header: Text(titles[index]).font(.title), // 헤더
         footer: HStack { Spacer(); Text("\(data[index].count)건") } // 푸터
         ) {
         ForEach(data[index], id: \.self) {
         Text($0)
         }
         }
         }
         } // List
         .listStyle(InsetGroupedListStyle())
         // .listStyle(GroupedListStyle())
         // .environment(\.horizontalSizeClass, .regular) // 작동 안함 직접 지정하자~
         } else {
         return List {
         ForEach(data.indices) { index in // data에 포함된 횟수만큼 섹션 생성
         Section(
         header: Text(titles[index]).font(.title), // 헤더
         footer: HStack { Spacer(); Text("\(data[index].count)건") } // 푸터
         ) {
         ForEach(data[index], id: \.self) {
         Text($0)
         }
         }
         }
         }
         .listStyle(GroupedListStyle())
         
         }
         */
        // MARK: - 지오메트리 리더
        // 자식뷰 한 개
        /*
         GeometryReader { _ in
         Circle().fill(Color.purple)
         .frame(width: 200, height: 200)
         .overlay(Text("Center").font(.title))
         }
         .background(Color.gray)
         */
        
        // 자식 뷰 두 개 이상~
        /*
         GeometryReader { _ in
         Circle().fill(Color.green)
         .frame(width: 350, height: 350)
         Circle().fill(Color.peach)
         .frame(width: 280, height: 280)
         Circle().fill(Color.yellow)
         .frame(width: 200, height: 200)
         Text("TopLeading").font(.title)
         }
         .background(Color.gray)
         */
        // MARK: - 지오메트리 프록시(GeometryProxy)
        /*
         GeometryReader { geometry in
         Text("Geometry Reader")
         .font(.largeTitle).bold()
         // position은 뷰의 센터 위치를 지정하는 수식어
         .position(x: geometry.size.width / 2, // 지오메트리 리더 너비의 절반
         y: geometry.safeAreaInsets.top) // 상단 안전 영역의 크기
         
         VStack {
         Text("Size").bold()
         // 지오메트리 리더 너비 표시
         Text("width : \(Int(geometry.size.width))")
         // 지오메트리 리더 높이 표시
         Text("height: \(Int(geometry.size.height))")
         }
         .position(x: geometry.size.width / 2,
         y: geometry.size.height / 2.5)
         
         VStack {
         Text("SafeAreaInsets").bold()
         // 상단 안전 영역의 크기
         Text("top : \(Int(geometry.safeAreaInsets.top))")
         // 하단 안전 영역의 크기
         Text("bottom : \(Int(geometry.safeAreaInsets.bottom))")
         }
         .position(x: geometry.size.width / 2, y: geometry.size.height / 1.4)
         } // geometryreader
         .font(.title)
         .frame(height: 500) // 지오메트리 리더의 높이 500 고정
         .border(Color.green, width: 5) // 지오메트리 리더 외곽서
         */
        // MARK: - Frame
        /*
         HStack {
         Rectangle().fill(Color.yellow).frame(width: 30)
         
         VStack {
         Rectangle().fill(Color.blue).frame(height: 200)
         
         GeometryReader {
         // 레이아웃을 위한 뷰와 실제 콘텐츠 분리
         self.contents(geometry: $0)
         } //geometryreader
         .background(Color.green)
         .border(Color.red, width: 4)
         } // VStack 좌표 공간에 이름 부여
         .coordinateSpace(name: "VStackCS")
         } // HStack 좌표 공간에 이름 부여
         .coordinateSpace(name: "HStackCS")
         }
         
         func contents(geometry g: GeometryProxy) -> some View {
         VStack {
         
         Text("Local").bold()  // 1
         Text(stringFormat(for: g.frame(in: .local).origin ))
         .padding(.bottom)
         
         Text("Global").bold() // 2
         Text(stringFormat(for: g.frame(in: .global).origin ))
         .padding(.bottom)
         
         Text("Named VSTackCS").bold() // 3
         Text(stringFormat(for: g.frame(in: .named("VStackCS")).origin ))
         .padding(.bottom)
         
         Text("Named HSTackCS").bold() // 3
         Text(stringFormat(for: g.frame(in: .named("HStackCS")).origin ))
         .padding(.bottom)
         }
         }
         
         // 좌표 정보 출력을 위한 메서드
         func stringFormat(for point: CGPoint) -> String {
         String(format: "(x: %.f, y: %.f)", arguments: [point.x, point.y])
         }
         */
        // MARK: - Frame alignment
        /*
        HStack {
            Text("Frame").background(Color.yellow)
                .frame(width: 100, height: 100, alignment: .leading)
                .border(Color.red)
            
            Text("Frame").background(Color.yellow)
                .frame(width: 100, height: 100, alignment: .center)
                .border(Color.red)
            
            Text("Frame").background(Color.yellow)
                .frame(width: 100, height: 100, alignment: .trailing)
                .border(Color.red)
        } // Hstack
        */
        // MARK: - 크기 제약 조건
        /*
        HStack {
            
            // - minWidth vs maxWidth
            Rectangle().fill(Color.yellow).frame(minWidth: 100) // 최소 너비 100
            Rectangle().fill(Color.peach).frame(maxWidth: 15)  // 최대 너비 15
            
            // - height cs maxHeight
            Rectangle().fill(Color.green).frame(height: 150)    // 높이 150 고정
            Rectangle().fill(Color.orange).frame(maxHeight: .infinity)   // 최대한의 높이 설정
            
            // - .infinity
            Rectangle().fill(Color.blue)   // 가능한 최대 너비와 높이 사용
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Rectangle().fill(Color.purple)   // 양 방향으로 infinity 한 것과 동일
            
        } // Hstack
        .frame(width: 300, height: 150)
        */
        // MARK: - Ideal Size와 fixed Size
        /*
        // - fixedSize 미적용
        VStack {
            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30)
            Rectangle()
            Color.red
            Image("SwiftUI").resizable()
        }
        // - fixedSize 적용
        VStack {
            Text("Frame Modifier").font(.title).bold().fixedSize()
                .frame(width: 80, height: 30)
            Rectangle().fixedSize()
            Color.red.fixedSize()
            Image("SwiftUI").resizable().fixedSize()
        }
        
        VStack(spacing: 100) {
            Group { // 자식 뷰에 공통으로 동일한 수식어를 적용하고 싶을 때 Group 활용 가능
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.")
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: true, vertical: false)   // 가로축에만 적용
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: false, vertical: true)   // 세로축에만 적용
            }
            .font(.title)
            .frame(width: 150, height: 40)
        }
       
        VStack(spacing: 20) {
            HStack {    // - 우선순위 미적용
                Color.red
                Color.green
                Color.blue
            }.frame(height: 40)
            
            HStack {    // - 우선순위 변경
                Color.red.layoutPriority(1)
                Color.green
                Color.blue.layoutPriority(1)
            }.frame(height: 40)
            
            HStack {    // - min, max 조건 설정
                Color.red.layoutPriority(1)
                Color.green.frame(minWidth: 30)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }.frame(height: 40)
            
            HStack {    // - 고정 크기 frame
                Color.red.frame(width: 50)
                Color.green.layoutPriority(1)
                Color.blue.frame(maxWidth: 50).layoutPriority(1)
            }.frame(height: 40)
        }
         */
        Text("1")
    }
}
    struct Navigation_Pr_Previews: PreviewProvider {
        static var previews: some View {
            Navigation_Pr()
    }
}
