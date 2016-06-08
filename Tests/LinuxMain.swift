import XCTest
import BasicTestSuite

var tests = [XCTestCaseEntry]()

tests += BasicTestSuite.allTests()

XCTMain(tests)
