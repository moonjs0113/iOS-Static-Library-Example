//
//  ContentView.swift
//  StaticApp
//
//  Created by Moon Jongseek on 2022/06/29.
//

import SwiftUI
import StaticFramework

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world! \(StaticNum.one.num)")
            CustomButton {
                staticPrint("Static Print")
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
