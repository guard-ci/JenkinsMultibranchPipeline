import XCTest
import Basic

class BasicTests: XCTestCase {
    func testReality() {
        XCTAssert(1 + 1 == 2, "Something is wrong.")
    }

    func testBasic() {
        let basic = Basic(x: 1, y: 2)
        XCTAssertEqual(basic.x, 1)
        XCTAssertEqual(basic.y, 2)
    }
}

extension BasicTests {
    static var allTests: [(String, BasicTests -> () throws -> Void)] {
        return [
            ("testReality", testReality),
            ("testBasic", testBasic)
        ]
    }
}
