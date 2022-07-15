//
//  ContentView.swift
//  StaticApp
//
//  Created by Moon Jongseek on 2022/06/29.
//

import SwiftUI
import StaticLibrary

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            CustomButton {
                print("\(StaticNum.one.num)")
            } label: {
                Text("Static Library Button")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
