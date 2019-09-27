// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ContractDelete.proto
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

/// Modify a smart contract instance to have the given parameter values. Any null field is ignored (left unchanged). If only the contractInstanceExpirationTime is being modified, then no signature is needed on this transaction other than for the account paying for the transaction itself. But if any of the other fields are being modified, then it must be signed by the adminKey. The use of adminKey is not currently supported in this API, but in the future will be implemented to allow these fields to be modified, and also to make modifications to the state of the instance. If the contract is created with no admin key, then none of the fields can be changed that need an admin signature, and therefore no admin key can ever be added. So if there is no admin key, then things like the bytecode are immutable. But if there is an admin key, then they can be changed. For example, the admin key might be a threshold key, which requires 3 of 5 binding arbitration judges to agree before the bytecode can be changed. This can be used to add flexibility to the mangement of smart contract behavior. But this is optional. If the smart contract is created without an admin key, then such a key can never be added, and its bytecode will be immutable. 
public struct Proto_ContractDeleteTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The Contract ID instance to delete (this can't be changed)
  public var contractID: Proto_ContractID {
    get {return _storage._contractID ?? Proto_ContractID()}
    set {_uniqueStorage()._contractID = newValue}
  }
  /// Returns true if `contractID` has been explicitly set.
  public var hasContractID: Bool {return _storage._contractID != nil}
  /// Clears the value of `contractID`. Subsequent reads from it will return its default value.
  public mutating func clearContractID() {_uniqueStorage()._contractID = nil}

  public var obtainers: OneOf_Obtainers? {
    get {return _storage._obtainers}
    set {_uniqueStorage()._obtainers = newValue}
  }

  /// The account ID which will receive all remaining hbars
  public var transferAccountID: Proto_AccountID {
    get {
      if case .transferAccountID(let v)? = _storage._obtainers {return v}
      return Proto_AccountID()
    }
    set {_uniqueStorage()._obtainers = .transferAccountID(newValue)}
  }

  /// The contract ID which will receive all remaining hbars
  public var transferContractID: Proto_ContractID {
    get {
      if case .transferContractID(let v)? = _storage._obtainers {return v}
      return Proto_ContractID()
    }
    set {_uniqueStorage()._obtainers = .transferContractID(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Obtainers: Equatable {
    /// The account ID which will receive all remaining hbars
    case transferAccountID(Proto_AccountID)
    /// The contract ID which will receive all remaining hbars
    case transferContractID(Proto_ContractID)

  #if !swift(>=4.1)
    public static func ==(lhs: Proto_ContractDeleteTransactionBody.OneOf_Obtainers, rhs: Proto_ContractDeleteTransactionBody.OneOf_Obtainers) -> Bool {
      switch (lhs, rhs) {
      case (.transferAccountID(let l), .transferAccountID(let r)): return l == r
      case (.transferContractID(let l), .transferContractID(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_ContractDeleteTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ContractDeleteTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "contractID"),
    2: .same(proto: "transferAccountID"),
    3: .same(proto: "transferContractID"),
  ]

  fileprivate class _StorageClass {
    var _contractID: Proto_ContractID? = nil
    var _obtainers: Proto_ContractDeleteTransactionBody.OneOf_Obtainers?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _contractID = source._contractID
      _obtainers = source._obtainers
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._contractID)
        case 2:
          var v: Proto_AccountID?
          if let current = _storage._obtainers {
            try decoder.handleConflictingOneOf()
            if case .transferAccountID(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._obtainers = .transferAccountID(v)}
        case 3:
          var v: Proto_ContractID?
          if let current = _storage._obtainers {
            try decoder.handleConflictingOneOf()
            if case .transferContractID(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._obtainers = .transferContractID(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._contractID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      switch _storage._obtainers {
      case .transferAccountID(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .transferContractID(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_ContractDeleteTransactionBody, rhs: Proto_ContractDeleteTransactionBody) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._contractID != rhs_storage._contractID {return false}
        if _storage._obtainers != rhs_storage._obtainers {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}