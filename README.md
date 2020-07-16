# CollectionComparable
![](https://img.shields.io/badge/platforms-iOS%2010%20%7C%20tvOS%2010%20%7C%20watchOS%204%20%7C%20macOS%2010.14-red)
[![Xcode](https://img.shields.io/badge/Xcode-11-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/CollectionComparable)
![GitHub](https://img.shields.io/github/license/wltrup/CollectionComparable)

## What

**CollectionComparable** is a Swift Package Manager package for iOS/tvOS (10.0 and above), watchOS (4.0 and above), and macOS (10.14 and above), under Swift 5.0 and above, adding a protocol extension to `Collection` so that it's `Comparable` when its `Element` type is `Comparable`. 

```swift
/// This isn't sufficient. Concrete types conforming to `Collection` who want to be
/// `Comparable` still need to declare conformance to `Comparable`. That's because
/// `Collection` is a *protocol*, not a concrete type, and protocols can't be extended
/// to add conformances to other protocols, ie, we can't say
///
/// `extension Collection: Comparable where Element: Comparable { ... }`
///
public extension Collection where Element: Comparable {

    static func < (lhs: Self, rhs: Self) -> Bool

}
```

## Installation

**CollectionComparable** is provided only as a Swift Package Manager package, because I'm moving away from CocoaPods and Carthage, and can be easily installed directly from Xcode.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**CollectionComparable** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
