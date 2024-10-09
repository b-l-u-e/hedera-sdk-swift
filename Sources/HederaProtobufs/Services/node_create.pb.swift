// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: node_create.proto
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
/// A transaction body to add a new consensus node to the network address book.
///
/// This transaction body SHALL be considered a "privileged transaction".
///
/// This message supports a transaction to create a new node in the network
/// address book. The transaction, once complete, enables a new consensus node
/// to join the network, and requires governing council authorization.
///
/// - A `NodeCreateTransactionBody` MUST be signed by the governing council.
/// - A `NodeCreateTransactionBody` MUST be signed by the `Key` assigned to the
///   `admin_key` field.
/// - The newly created node information SHALL be added to the network address
///   book information in the network state.
/// - The new entry SHALL be created in "state" but SHALL NOT participate in
///   network consensus and SHALL NOT be present in network "configuration"
///   until the next "upgrade" transaction (as noted below).
/// - All new address book entries SHALL be added to the active network
///   configuration during the next `freeze` transaction with the field
///   `freeze_type` set to `PREPARE_UPGRADE`.
///
/// ### Record Stream Effects
/// Upon completion the newly assigned `node_id` SHALL be in the transaction
/// receipt.
public struct Com_Hedera_Hapi_Node_Addressbook_NodeCreateTransactionBody: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// A Node account identifier.
  /// <p>
  /// This account identifier MUST be in the "account number" form.<br/>
  /// This account identifier MUST NOT use the alias field.<br/>
  /// If the identified account does not exist, this transaction SHALL fail.<br/>
  /// Multiple nodes MAY share the same node account.<br/>
  /// This field is REQUIRED.
  public var accountID: Proto_AccountID {
    get {return _accountID ?? Proto_AccountID()}
    set {_accountID = newValue}
  }
  /// Returns true if `accountID` has been explicitly set.
  public var hasAccountID: Bool {return self._accountID != nil}
  /// Clears the value of `accountID`. Subsequent reads from it will return its default value.
  public mutating func clearAccountID() {self._accountID = nil}

  ///*
  /// A short description of the node.
  /// <p>
  /// This value, if set, MUST NOT exceed 100 bytes when encoded as UTF-8.<br/>
  /// This field is OPTIONAL.
  public var description_p: String = String()

  ///*
  /// A list of service endpoints for gossip.
  /// <p>
  /// These endpoints SHALL represent the published endpoints to which other
  /// consensus nodes may _gossip_ transactions.<br/>
  /// These endpoints MUST specify a port.<br/>
  /// This list MUST NOT be empty.<br/>
  /// This list MUST NOT contain more than `10` entries.<br/>
  /// The first two entries in this list SHALL be the endpoints published to
  /// all consensus nodes.<br/>
  /// All other entries SHALL be reserved for future use.
  /// <p>
  /// Each network may have additional requirements for these endpoints.
  /// A client MUST check network-specific documentation for those
  /// details.<br/>
  /// If the network configuration value `gossipFqdnRestricted` is set, then
  /// all endpoints in this list MUST supply only IP address.<br/>
  /// If the network configuration value `gossipFqdnRestricted` is _not_ set,
  /// then endpoints in this list MAY supply either IP address or FQDN, but
  /// MUST NOT supply both values for the same endpoint.
  public var gossipEndpoint: [Proto_ServiceEndpoint] = []

  ///*
  /// A list of service endpoints for gRPC calls.
  /// <p>
  /// These endpoints SHALL represent the published gRPC endpoints to which
  /// clients may submit transactions.<br/>
  /// These endpoints MUST specify a port.<br/>
  /// Endpoints in this list MAY supply either IP address or FQDN, but MUST
  /// NOT supply both values for the same endpoint.<br/>
  /// This list MUST NOT be empty.<br/>
  /// This list MUST NOT contain more than `8` entries.
  public var serviceEndpoint: [Proto_ServiceEndpoint] = []

  ///*
  /// A certificate used to sign gossip events.
  /// <p>
  /// This value MUST be a certificate of a type permitted for gossip
  /// signatures.<br/>
  /// This value MUST be the DER encoding of the certificate presented.<br/>
  /// This field is REQUIRED and MUST NOT be empty.
  public var gossipCaCertificate: Data = Data()

  ///*
  /// A hash of the node gRPC TLS certificate.
  /// <p>
  /// This value MAY be used to verify the certificate presented by the node
  /// during TLS negotiation for gRPC.<br/>
  /// This value MUST be a SHA-384 hash.<br/>
  /// The TLS certificate to be hashed MUST first be in PEM format and MUST be
  /// encoded with UTF-8 NFKD encoding to a stream of bytes provided to
  /// the hash algorithm.<br/>
  /// This field is OPTIONAL.
  public var grpcCertificateHash: Data = Data()

  ///*
  /// An administrative key controlled by the node operator.
  /// <p>
  /// This key MUST sign this transaction.<br/>
  /// This key MUST sign each transaction to update this node.<br/>
  /// This field MUST contain a valid `Key` value.<br/>
  /// This field is REQUIRED and MUST NOT be set to an empty `KeyList`.
  public var adminKey: Proto_Key {
    get {return _adminKey ?? Proto_Key()}
    set {_adminKey = newValue}
  }
  /// Returns true if `adminKey` has been explicitly set.
  public var hasAdminKey: Bool {return self._adminKey != nil}
  /// Clears the value of `adminKey`. Subsequent reads from it will return its default value.
  public mutating func clearAdminKey() {self._adminKey = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _accountID: Proto_AccountID? = nil
  fileprivate var _adminKey: Proto_Key? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.hedera.hapi.node.addressbook"

extension Com_Hedera_Hapi_Node_Addressbook_NodeCreateTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NodeCreateTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
    2: .same(proto: "description"),
    3: .standard(proto: "gossip_endpoint"),
    4: .standard(proto: "service_endpoint"),
    5: .standard(proto: "gossip_ca_certificate"),
    6: .standard(proto: "grpc_certificate_hash"),
    7: .standard(proto: "admin_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._accountID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.gossipEndpoint) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.serviceEndpoint) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self.gossipCaCertificate) }()
      case 6: try { try decoder.decodeSingularBytesField(value: &self.grpcCertificateHash) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._adminKey) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._accountID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    if !self.gossipEndpoint.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.gossipEndpoint, fieldNumber: 3)
    }
    if !self.serviceEndpoint.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.serviceEndpoint, fieldNumber: 4)
    }
    if !self.gossipCaCertificate.isEmpty {
      try visitor.visitSingularBytesField(value: self.gossipCaCertificate, fieldNumber: 5)
    }
    if !self.grpcCertificateHash.isEmpty {
      try visitor.visitSingularBytesField(value: self.grpcCertificateHash, fieldNumber: 6)
    }
    try { if let v = self._adminKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Hedera_Hapi_Node_Addressbook_NodeCreateTransactionBody, rhs: Com_Hedera_Hapi_Node_Addressbook_NodeCreateTransactionBody) -> Bool {
    if lhs._accountID != rhs._accountID {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.gossipEndpoint != rhs.gossipEndpoint {return false}
    if lhs.serviceEndpoint != rhs.serviceEndpoint {return false}
    if lhs.gossipCaCertificate != rhs.gossipCaCertificate {return false}
    if lhs.grpcCertificateHash != rhs.grpcCertificateHash {return false}
    if lhs._adminKey != rhs._adminKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}