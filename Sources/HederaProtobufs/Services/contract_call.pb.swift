// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: contract_call.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///*
/// Call a function of the given smart contract instance, giving it functionParameters as its inputs.
/// The call can use at maximum the given amount of gas - the paying account will not be charged for
/// any unspent gas.
///
/// If this function results in data being stored, an amount of gas is calculated that reflects this
/// storage burden.
///
/// The amount of gas used, as well as other attributes of the transaction, e.g. size, number of
/// signatures to be verified, determine the fee for the transaction - which is charged to the paying
/// account.
public struct Proto_ContractCallTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// The contract to call
  public var contractID: Proto_ContractID {
    get {return _contractID ?? Proto_ContractID()}
    set {_contractID = newValue}
  }
  /// Returns true if `contractID` has been explicitly set.
  public var hasContractID: Bool {return self._contractID != nil}
  /// Clears the value of `contractID`. Subsequent reads from it will return its default value.
  public mutating func clearContractID() {self._contractID = nil}

  ///*
  /// the maximum amount of gas to use for the call
  public var gas: Int64 = 0

  ///*
  /// number of tinybars sent (the function must be payable if this is nonzero)
  public var amount: Int64 = 0

  ///*
  /// which function to call, and the parameters to pass to the function
  public var functionParameters: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _contractID: Proto_ContractID? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Proto_ContractCallTransactionBody: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_ContractCallTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ContractCallTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "contractID"),
    2: .same(proto: "gas"),
    3: .same(proto: "amount"),
    4: .same(proto: "functionParameters"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._contractID) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.gas) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.amount) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.functionParameters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._contractID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.gas != 0 {
      try visitor.visitSingularInt64Field(value: self.gas, fieldNumber: 2)
    }
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 3)
    }
    if !self.functionParameters.isEmpty {
      try visitor.visitSingularBytesField(value: self.functionParameters, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ContractCallTransactionBody, rhs: Proto_ContractCallTransactionBody) -> Bool {
    if lhs._contractID != rhs._contractID {return false}
    if lhs.gas != rhs.gas {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.functionParameters != rhs.functionParameters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
