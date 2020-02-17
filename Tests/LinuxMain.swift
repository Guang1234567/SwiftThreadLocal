import XCTest

import SwiftThreadLocalTests

var tests = [XCTestCaseEntry]()
tests += SwiftThreadLocalTests.allTests()
XCTMain(tests)
