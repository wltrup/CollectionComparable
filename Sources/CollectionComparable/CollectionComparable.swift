import Foundation

/// This isn't sufficient. Concrete types conforming to Collection who want to be
/// Comparable still need to declare conformance to Comparable. That's because
/// Collection is a *protocol*, not a concrete type, and protocols can't be extended
/// to add conformances to other protocols, ie, we can't say
/// "extension Collection: Comparable where Element: Comparable { ... }"

public extension Collection where Element: Comparable {

    static func < (lhs: Self, rhs: Self) -> Bool {

        if lhs.count < rhs.count { return true }
        if lhs.count > rhs.count { return false }

        guard !lhs.isEmpty else { return false }

        for k in (0 ..< lhs.count) {
            var k1 = lhs.startIndex
            lhs.formIndex(&k1, offsetBy: k)
            var k2 = rhs.startIndex
            rhs.formIndex(&k2, offsetBy: k)
            if lhs[k1] < rhs[k2] { return true }
            if lhs[k1] > rhs[k2] { return false }
        }

        return false

    }

}
