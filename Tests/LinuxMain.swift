import XCTest
import BasicTestSuite
import BarTestSuite
import FooTestSuite

var tests = [XCTestCaseEntry]()

tests += BasicTestSuite.allTests()
tests += BarTestSuite.allTests()
tests += FooTestSuite.allTests()

XCTMain(tests)
