import XCTest

#if !os(OSX)

public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BarTests.allTests)
    ]
}

#endif
