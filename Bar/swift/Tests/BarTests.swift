import XCTest
@testable import Bar

class BarTests: XCTestCase {
    func testBar() {
        let bar = Bar(x: 1, y: 2)

        XCTAssertEqual(bar.x, 1)
        XCTAssertEqual(bar.y, 2)
    }
}

extension BarTests {
    static var allTests: [(String, BarTests -> () throws -> Void)] {
        return [
            ("testBar", testBar)
        ]
    }
}
