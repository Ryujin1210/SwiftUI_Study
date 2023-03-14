//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        Text("hello") + Text("World").fontWeight(.bold)
    }
}

// Present the view controller in the Live View window

// 방법 1
//PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())

// 방법 2
PlaygroundPage.current.setLiveView(ContentView())
