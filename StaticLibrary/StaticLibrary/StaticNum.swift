//
//  StaticNum.swift
//  StaticLibrary
//
//  Created by Moon Jongseek on 2022/07/15.
//

import Foundation

public enum StaticNum: Int {
    case one, two, three
    
    public var num: Int {
        switch self {
        case .one:
            return 1
        case .two:
            return 2
        case .three:
            return 3
        }
    }
}
