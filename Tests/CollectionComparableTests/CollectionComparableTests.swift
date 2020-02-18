import XCTest
@testable import CollectionComparable

final class CollectionComparableTests: XCTestCase {

    func test_comparable1() {
        let a = [1,2,3]
        let b = [1,2,3,4]
        XCTAssertTrue(a < b)
        XCTAssertFalse(b < a)
    }

    func test_comparable2() {
        let a: [Int] = []
        let b = a
        XCTAssertFalse(a < b)
        XCTAssertFalse(b < a)
    }

    func test_comparable3() {
        let a = [1,2,3,4,5]
        let b = [1,2,4,5,6]
        XCTAssertTrue(a < b)
        XCTAssertFalse(b < a)
    }

    func test_comparable4() {
        let a = [1,2,3,4,5]
        let b = a
        XCTAssertFalse(a < b)
        XCTAssertFalse(b < a)
    }

}
