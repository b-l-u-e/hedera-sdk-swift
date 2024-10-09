// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: token_reject.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

///*
/// # Token Reject
/// Messages used to implement a transaction to reject a token type from an
/// account.
///
/// ### Keywords
/// The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT",
/// "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this
/// document are to be interpreted as described in [RFC2119](https://www.ietf.org/rfc/rfc2119).

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
/// Reject undesired token(s).<br/>
/// Transfer one or more token balances held by the requesting account to the treasury for each
/// token type.<br/>
/// Each transfer SHALL be one of the following
/// - A single non-fungible/unique token.
/// - The full balance held for a fungible/common token type.
///
/// A single tokenReject transaction SHALL support a maximum of 10 transfers.
///
/// ### Transaction Record Effects
/// - Each successful transfer from `payer` to `treasury` SHALL be recorded in `token_transfer_list` for the transaction record.
public struct Proto_TokenRejectTransactionBody: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// An account holding the tokens to be rejected.<br/>
  /// If set, this account MUST sign this transaction.
  /// If not set, the payer for this transaction SHALL be the account rejecting tokens.
  public var owner: Proto_AccountID {
    get {return _owner ?? Proto_AccountID()}
    set {_owner = newValue}
  }
  /// Returns true if `owner` has been explicitly set.
  public var hasOwner: Bool {return self._owner != nil}
  /// Clears the value of `owner`. Subsequent reads from it will return its default value.
  public mutating func clearOwner() {self._owner = nil}

  ///*
  /// A list of one or more token rejections.<br/>
  /// On success each rejected token serial number or balance SHALL be transferred from
  /// the requesting account to the treasury account for that token type.<br/>
  /// After rejection the requesting account SHALL continue to be associated with the token.<br/>
  /// if dissociation is desired then a separate TokenDissociate transaction MUST be submitted to remove the association.
  public var rejections: [Proto_TokenReference] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _owner: Proto_AccountID? = nil
}

///*
/// A union token identifier.
///
/// Identify a fungible/common token type, or a single non-fungible/unique token serial.
public struct Proto_TokenReference: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var tokenIdentifier: Proto_TokenReference.OneOf_TokenIdentifier? = nil

  ///*
  /// A fungible/common token type.
  public var fungibleToken: Proto_TokenID {
    get {
      if case .fungibleToken(let v)? = tokenIdentifier {return v}
      return Proto_TokenID()
    }
    set {tokenIdentifier = .fungibleToken(newValue)}
  }

  ///*
  /// A single specific serialized non-fungible/unique token.
  public var nft: Proto_NftID {
    get {
      if case .nft(let v)? = tokenIdentifier {return v}
      return Proto_NftID()
    }
    set {tokenIdentifier = .nft(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_TokenIdentifier: Equatable, Sendable {
    ///*
    /// A fungible/common token type.
    case fungibleToken(Proto_TokenID)
    ///*
    /// A single specific serialized non-fungible/unique token.
    case nft(Proto_NftID)

  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_TokenRejectTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenRejectTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "owner"),
    2: .same(proto: "rejections"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._owner) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.rejections) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._owner {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.rejections.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.rejections, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenRejectTransactionBody, rhs: Proto_TokenRejectTransactionBody) -> Bool {
    if lhs._owner != rhs._owner {return false}
    if lhs.rejections != rhs.rejections {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_TokenReference: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenReference"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "fungible_token"),
    2: .same(proto: "nft"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Proto_TokenID?
        var hadOneofValue = false
        if let current = self.tokenIdentifier {
          hadOneofValue = true
          if case .fungibleToken(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.tokenIdentifier = .fungibleToken(v)
        }
      }()
      case 2: try {
        var v: Proto_NftID?
        var hadOneofValue = false
        if let current = self.tokenIdentifier {
          hadOneofValue = true
          if case .nft(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.tokenIdentifier = .nft(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.tokenIdentifier {
    case .fungibleToken?: try {
      guard case .fungibleToken(let v)? = self.tokenIdentifier else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .nft?: try {
      guard case .nft(let v)? = self.tokenIdentifier else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenReference, rhs: Proto_TokenReference) -> Bool {
    if lhs.tokenIdentifier != rhs.tokenIdentifier {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}