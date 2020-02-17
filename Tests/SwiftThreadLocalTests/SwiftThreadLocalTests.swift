import XCTest
@testable import SwiftThreadLocal

final class SwiftThreadLocalTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftThreadLocal().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
