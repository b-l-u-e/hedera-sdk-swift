// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: TransactionGetRecord.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Get the record for a transaction. If the transaction requested a record, then the record lasts for one hour, and a state proof is available for it. If the transaction created an account, file, or smart contract instance, then the record will contain the ID for what it created. If the transaction called a smart contract function, then the record contains the result of that call. If the transaction was a cryptocurrency transfer, then the record includes the TransferList which gives the details of that transfer. If the transaction didn't return anything that should be in the record, then the results field will be set to nothing. 
public struct Proto_TransactionGetRecordQuery {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Standard info sent from client to node, including the signed payment, and what kind of response is requested (cost, state proof, both, or neither).
  public var header: Proto_QueryHeader {
    get {return _storage._header ?? Proto_QueryHeader()}
    set {_uniqueStorage()._header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return _storage._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {_uniqueStorage()._header = nil}

  /// The ID of the transaction for which the record is requested.
  public var transactionID: Proto_TransactionID {
    get {return _storage._transactionID ?? Proto_TransactionID()}
    set {_uniqueStorage()._transactionID = newValue}
  }
  /// Returns true if `transactionID` has been explicitly set.
  public var hasTransactionID: Bool {return _storage._transactionID != nil}
  /// Clears the value of `transactionID`. Subsequent reads from it will return its default value.
  public mutating func clearTransactionID() {_uniqueStorage()._transactionID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Response when the client sends the node TransactionGetRecordQuery 
public struct Proto_TransactionGetRecordResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///Standard response from node to client, including the requested fields: cost, or state proof, or both, or neither.
  public var header: Proto_ResponseHeader {
    get {return _storage._header ?? Proto_ResponseHeader()}
    set {_uniqueStorage()._header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  public var hasHeader: Bool {return _storage._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  public mutating func clearHeader() {_uniqueStorage()._header = nil}

  /// The requested record
  public var transactionRecord: Proto_TransactionRecord {
    get {return _storage._transactionRecord ?? Proto_TransactionRecord()}
    set {_uniqueStorage()._transactionRecord = newValue}
  }
  /// Returns true if `transactionRecord` has been explicitly set.
  public var hasTransactionRecord: Bool {return _storage._transactionRecord != nil}
  /// Clears the value of `transactionRecord`. Subsequent reads from it will return its default value.
  public mutating func clearTransactionRecord() {_uniqueStorage()._transactionRecord = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_TransactionGetRecordQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionGetRecordQuery"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "transactionID"),
  ]

  fileprivate class _StorageClass {
    var _header: Proto_QueryHeader? = nil
    var _transactionID: Proto_TransactionID? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _header = source._header
      _transactionID = source._transactionID
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._header)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._transactionID)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._header {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._transactionID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TransactionGetRecordQuery, rhs: Proto_TransactionGetRecordQuery) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._header != rhs_storage._header {return false}
        if _storage._transactionID != rhs_storage._transactionID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_TransactionGetRecordResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionGetRecordResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    3: .same(proto: "transactionRecord"),
  ]

  fileprivate class _StorageClass {
    var _header: Proto_ResponseHeader? = nil
    var _transactionRecord: Proto_TransactionRecord? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _header = source._header
      _transactionRecord = source._transactionRecord
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._header)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._transactionRecord)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._header {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._transactionRecord {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TransactionGetRecordResponse, rhs: Proto_TransactionGetRecordResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._header != rhs_storage._header {return false}
        if _storage._transactionRecord != rhs_storage._transactionRecord {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}