import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Ed25519PrivateKeyTests.allTests),
        testCase(Ed25519PublicKeyTests.allTests),
        testCase(HexTests.allTests),
        testCase(EntityIdTests.allTests),
        testCase(DateTests.allTests),
    ]
}
#endif