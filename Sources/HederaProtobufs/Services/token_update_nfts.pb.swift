// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: token_update_nfts.proto
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
/// At consensus, updates an already created Non Fungible Token to the given values.
///
/// If no value is given for a field, that field is left unchanged.
/// Only certain fields such as metadata can be updated.
///
/// Updating the metadata of an NFT does not affect its ownership or transferability.
/// This operation is intended for updating attributes of individual NFTs in a collection.
///
/// --- Signing Requirements ---
/// 1. To update metadata of an NFT, the metadata_key of the token should sign the transaction.
public struct Proto_TokenUpdateNftsTransactionBody: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// The token for which to update NFTs.
  public var token: Proto_TokenID {
    get {return _token ?? Proto_TokenID()}
    set {_token = newValue}
  }
  /// Returns true if `token` has been explicitly set.
  public var hasToken: Bool {return self._token != nil}
  /// Clears the value of `token`. Subsequent reads from it will return its default value.
  public mutating func clearToken() {self._token = nil}

  ///*
  /// The list of serial numbers to be updated.
  public var serialNumbers: [Int64] = []

  ///*
  /// The new metadata of the NFT(s)
  public var metadata: SwiftProtobuf.Google_Protobuf_BytesValue {
    get {return _metadata ?? SwiftProtobuf.Google_Protobuf_BytesValue()}
    set {_metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  public var hasMetadata: Bool {return self._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  public mutating func clearMetadata() {self._metadata = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Proto_TokenID? = nil
  fileprivate var _metadata: SwiftProtobuf.Google_Protobuf_BytesValue? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_TokenUpdateNftsTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenUpdateNftsTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .standard(proto: "serial_numbers"),
    3: .same(proto: "metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      case 2: try { try decoder.decodeRepeatedInt64Field(value: &self.serialNumbers) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._metadata) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._token {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.serialNumbers.isEmpty {
      try visitor.visitPackedInt64Field(value: self.serialNumbers, fieldNumber: 2)
    }
    try { if let v = self._metadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenUpdateNftsTransactionBody, rhs: Proto_TokenUpdateNftsTransactionBody) -> Bool {
    if lhs._token != rhs._token {return false}
    if lhs.serialNumbers != rhs.serialNumbers {return false}
    if lhs._metadata != rhs._metadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
