import XCTest
import BasicTestSuite
import BarTestSuite

var tests = [XCTestCaseEntry]()

tests += BasicTestSuite.allTests()
tests += BarTestSuite.allTests()

XCTMain(tests)
