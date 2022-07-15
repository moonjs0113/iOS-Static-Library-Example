# iOS-Static-Library-Example

[![Swift Version][swift-image]](https://swift.org/)
[![Xcode Version][Xcode-image]](https://developer.apple.com/kr/xcode/)
[![Platform][Platform-image]](https://developer.apple.com/kr/ios/)

[swift-image]:https://img.shields.io/badge/Swift-5.6-orange?style=flat
[Xcode-image]: https://img.shields.io/badge/Xcode-13.3-blue?style=flat
[Platform-image]: https://img.shields.io/badge/iOS-15.4+-blue?style=flat

iOS Static Library/Framework를 직접 만들어보고 적용해보는 프로젝트입니다.

Custom Button을 Static Library/Framework로 만들어보며 학습합니다.

## 이전 시도들
[Static Library](README-Library.md)
[Divide Scheme](README-Scheme.md)

## Repository Structure
``` shell
iOS-Static-Library-Example
├── Library       // Static Library
├── StaticApp     // App Project
└── StaticLibrary // Static Library Project
```

---
## 0. Introduction
이전 시도에서는 빌드 타겟이 바뀔 때마다 파일을 교체해줘야하는 상황이었다.   
그래서 이번에는 Scheme를 이용해보았다.

## 1. Create Framework Project
![CreateProj](gitImage/CreateProj-Framework.png)
Framework를 선택해서 새로운 프로젝트를 만든다.

## 2. Coding
아래 세 개의 코드를 테스트 해보려고 한다.

``` swift
// CustomButton.swift
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
```

``` swift
// StaticNum.swift
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
```

``` swift
// StaticFunc.swift
public func staticPrint<T: StringProtocol>(_ text: T) {
    print(text)
}
```

## 3. Build Framework
