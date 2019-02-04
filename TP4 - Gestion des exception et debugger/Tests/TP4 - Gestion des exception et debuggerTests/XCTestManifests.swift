import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(TP4___Gestion_des_exception_et_debuggerTests.allTests),
    ]
}
#endif