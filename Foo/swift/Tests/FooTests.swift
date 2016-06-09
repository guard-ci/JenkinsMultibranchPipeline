import XCTest
@testable import Foo

class FooTests: XCTestCase {
    func testFoo() {
        let foo = Foo(name: "name", address: "address")

        XCTAssertEqual("name", foo.name)
        XCTAssertEqual("address", foo.address)
    }
}

extension FooTests {
    static var allTests: [(String, FooTests -> () throws -> Void)] {
        return [
            ("testFoo", testFoo)
        ]
    }
}
