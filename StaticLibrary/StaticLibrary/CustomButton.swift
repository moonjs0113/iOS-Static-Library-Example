//
//  CustomButton.swift
//  StaticLibrary
//
//  Created by Moon Jongseek on 2022/06/29.
//

import SwiftUI

public struct CustomButton<L> : View where L : View {
    let role: ButtonRole?
    let action: () -> Void
    let label: () -> L

    public init(role: ButtonRole? = .none, action: @escaping () -> Void, @ViewBuilder label: @escaping () -> L) {
        self.role = role
        self.action = action
        self.label = label
    }
    
    public var body: some View {
        Button(role: self.role) {
            self.action()
        } label: {
            self.label()
        }
    }
}


