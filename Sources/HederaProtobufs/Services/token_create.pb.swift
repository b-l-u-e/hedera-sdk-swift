// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: token_create.proto
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
/// Create a new token. After the token is created, the Token ID for it is in the receipt.
/// The specified Treasury Account is receiving the initial supply of tokens as-well as the tokens
/// from the Token Mint operation once executed. The balance of the treasury account is decreased
/// when the Token Burn operation is executed.
/// 
/// The <tt>initialSupply</tt> is the initial supply of the smallest parts of a token (like a
/// tinybar, not an hbar). These are the smallest units of the token which may be transferred.
/// 
/// The supply can change over time. If the total supply at some moment is <i>S</i> parts of tokens,
/// and the token is using <i>D</i> decimals, then <i>S</i> must be less than or equal to
/// 2<sup>63</sup>-1, which is 9,223,372,036,854,775,807. The number of whole tokens (not parts) will
/// be <i>S / 10<sup>D</sup></i>.
/// 
/// If decimals is 8 or 11, then the number of whole tokens can be at most a few billions or
/// millions, respectively. For example, it could match Bitcoin (21 million whole tokens with 8
/// decimals) or hbars (50 billion whole tokens with 8 decimals). It could even match Bitcoin with
/// milli-satoshis (21 million whole tokens with 11 decimals).
/// 
/// Note that a created token is <i>immutable</i> if the <tt>adminKey</tt> is omitted. No property of
/// an immutable token can ever change, with the sole exception of its expiry. Anyone can pay to
/// extend the expiry time of an immutable token.
/// 
/// A token can be either <i>FUNGIBLE_COMMON</i> or <i>NON_FUNGIBLE_UNIQUE</i>, based on its
/// <i>TokenType</i>. If it has been omitted, <i>FUNGIBLE_COMMON</i> type is used.
/// 
/// A token can have either <i>INFINITE</i> or <i>FINITE</i> supply type, based on its
/// <i>TokenType</i>. If it has been omitted, <i>INFINITE</i> type is used.
/// 
/// If a <i>FUNGIBLE</i> TokenType is used, <i>initialSupply</i> should explicitly be set to a
/// non-negative. If not, the transaction will resolve to INVALID_TOKEN_INITIAL_SUPPLY.
/// 
/// If a <i>NON_FUNGIBLE_UNIQUE</i> TokenType is used, <i>initialSupply</i> should explicitly be set
/// to 0. If not, the transaction will resolve to INVALID_TOKEN_INITIAL_SUPPLY.
/// 
/// If an <i>INFINITE</i> TokenSupplyType is used, <i>maxSupply</i> should explicitly be set to 0. If
/// it is not 0, the transaction will resolve to INVALID_TOKEN_MAX_SUPPLY.
/// 
/// If a <i>FINITE</i> TokenSupplyType is used, <i>maxSupply</i> should be explicitly set to a
/// non-negative value. If it is not, the transaction will resolve to INVALID_TOKEN_MAX_SUPPLY.
public struct Proto_TokenCreateTransactionBody: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// The publicly visible name of the token. The token name is specified as a Unicode string. 
  /// Its UTF-8 encoding cannot exceed 100 bytes, and cannot contain the 0 byte (NUL).
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  ///*
  /// The publicly visible token symbol. The token symbol is specified as a Unicode string. 
  /// Its UTF-8 encoding cannot exceed 100 bytes, and cannot contain the 0 byte (NUL).
  public var symbol: String {
    get {return _storage._symbol}
    set {_uniqueStorage()._symbol = newValue}
  }

  ///*
  /// For tokens of type FUNGIBLE_COMMON - the number of decimal places a
  /// token is divisible by. For tokens of type NON_FUNGIBLE_UNIQUE - value
  /// must be 0
  public var decimals: UInt32 {
    get {return _storage._decimals}
    set {_uniqueStorage()._decimals = newValue}
  }

  ///*
  /// Specifies the initial supply of tokens to be put in circulation. The
  /// initial supply is sent to the Treasury Account. The supply is in the
  /// lowest denomination possible. In the case for NON_FUNGIBLE_UNIQUE Type
  /// the value must be 0
  public var initialSupply: UInt64 {
    get {return _storage._initialSupply}
    set {_uniqueStorage()._initialSupply = newValue}
  }

  ///*
  /// The account which will act as a treasury for the token. This account
  /// will receive the specified initial supply or the newly minted NFTs in
  /// the case for NON_FUNGIBLE_UNIQUE Type
  public var treasury: Proto_AccountID {
    get {return _storage._treasury ?? Proto_AccountID()}
    set {_uniqueStorage()._treasury = newValue}
  }
  /// Returns true if `treasury` has been explicitly set.
  public var hasTreasury: Bool {return _storage._treasury != nil}
  /// Clears the value of `treasury`. Subsequent reads from it will return its default value.
  public mutating func clearTreasury() {_uniqueStorage()._treasury = nil}

  ///*
  /// The key which can perform update/delete operations on the token. If empty, the token can be
  /// perceived as immutable (not being able to be updated/deleted)
  public var adminKey: Proto_Key {
    get {return _storage._adminKey ?? Proto_Key()}
    set {_uniqueStorage()._adminKey = newValue}
  }
  /// Returns true if `adminKey` has been explicitly set.
  public var hasAdminKey: Bool {return _storage._adminKey != nil}
  /// Clears the value of `adminKey`. Subsequent reads from it will return its default value.
  public mutating func clearAdminKey() {_uniqueStorage()._adminKey = nil}

  ///*
  /// The key which can grant or revoke KYC of an account for the token's transactions. If empty,
  /// KYC is not required, and KYC grant or revoke operations are not possible.
  public var kycKey: Proto_Key {
    get {return _storage._kycKey ?? Proto_Key()}
    set {_uniqueStorage()._kycKey = newValue}
  }
  /// Returns true if `kycKey` has been explicitly set.
  public var hasKycKey: Bool {return _storage._kycKey != nil}
  /// Clears the value of `kycKey`. Subsequent reads from it will return its default value.
  public mutating func clearKycKey() {_uniqueStorage()._kycKey = nil}

  ///*
  /// The key which can sign to freeze or unfreeze an account for token transactions. If empty,
  /// freezing is not possible
  public var freezeKey: Proto_Key {
    get {return _storage._freezeKey ?? Proto_Key()}
    set {_uniqueStorage()._freezeKey = newValue}
  }
  /// Returns true if `freezeKey` has been explicitly set.
  public var hasFreezeKey: Bool {return _storage._freezeKey != nil}
  /// Clears the value of `freezeKey`. Subsequent reads from it will return its default value.
  public mutating func clearFreezeKey() {_uniqueStorage()._freezeKey = nil}

  ///*
  /// The key which can wipe the token balance of an account. If empty, wipe is not possible
  public var wipeKey: Proto_Key {
    get {return _storage._wipeKey ?? Proto_Key()}
    set {_uniqueStorage()._wipeKey = newValue}
  }
  /// Returns true if `wipeKey` has been explicitly set.
  public var hasWipeKey: Bool {return _storage._wipeKey != nil}
  /// Clears the value of `wipeKey`. Subsequent reads from it will return its default value.
  public mutating func clearWipeKey() {_uniqueStorage()._wipeKey = nil}

  ///*
  /// The key which can change the supply of a token. The key is used to sign Token Mint/Burn
  /// operations
  public var supplyKey: Proto_Key {
    get {return _storage._supplyKey ?? Proto_Key()}
    set {_uniqueStorage()._supplyKey = newValue}
  }
  /// Returns true if `supplyKey` has been explicitly set.
  public var hasSupplyKey: Bool {return _storage._supplyKey != nil}
  /// Clears the value of `supplyKey`. Subsequent reads from it will return its default value.
  public mutating func clearSupplyKey() {_uniqueStorage()._supplyKey = nil}

  ///*
  /// The default Freeze status (frozen or unfrozen) of Hedera accounts relative to this token. If
  /// true, an account must be unfrozen before it can receive the token
  public var freezeDefault: Bool {
    get {return _storage._freezeDefault}
    set {_uniqueStorage()._freezeDefault = newValue}
  }

  ///*
  /// The epoch second at which the token should expire; if an auto-renew account and period are
  /// specified, this is coerced to the current epoch second plus the autoRenewPeriod
  public var expiry: Proto_Timestamp {
    get {return _storage._expiry ?? Proto_Timestamp()}
    set {_uniqueStorage()._expiry = newValue}
  }
  /// Returns true if `expiry` has been explicitly set.
  public var hasExpiry: Bool {return _storage._expiry != nil}
  /// Clears the value of `expiry`. Subsequent reads from it will return its default value.
  public mutating func clearExpiry() {_uniqueStorage()._expiry = nil}

  ///*
  /// An account which will be automatically charged to renew the token's expiration, at
  /// autoRenewPeriod interval
  public var autoRenewAccount: Proto_AccountID {
    get {return _storage._autoRenewAccount ?? Proto_AccountID()}
    set {_uniqueStorage()._autoRenewAccount = newValue}
  }
  /// Returns true if `autoRenewAccount` has been explicitly set.
  public var hasAutoRenewAccount: Bool {return _storage._autoRenewAccount != nil}
  /// Clears the value of `autoRenewAccount`. Subsequent reads from it will return its default value.
  public mutating func clearAutoRenewAccount() {_uniqueStorage()._autoRenewAccount = nil}

  ///*
  /// The interval at which the auto-renew account will be charged to extend the token's expiry
  public var autoRenewPeriod: Proto_Duration {
    get {return _storage._autoRenewPeriod ?? Proto_Duration()}
    set {_uniqueStorage()._autoRenewPeriod = newValue}
  }
  /// Returns true if `autoRenewPeriod` has been explicitly set.
  public var hasAutoRenewPeriod: Bool {return _storage._autoRenewPeriod != nil}
  /// Clears the value of `autoRenewPeriod`. Subsequent reads from it will return its default value.
  public mutating func clearAutoRenewPeriod() {_uniqueStorage()._autoRenewPeriod = nil}

  ///*
  /// The memo associated with the token (UTF-8 encoding max 100 bytes)
  public var memo: String {
    get {return _storage._memo}
    set {_uniqueStorage()._memo = newValue}
  }

  ///*
  /// IWA compatibility. Specifies the token type. Defaults to FUNGIBLE_COMMON
  public var tokenType: Proto_TokenType {
    get {return _storage._tokenType}
    set {_uniqueStorage()._tokenType = newValue}
  }

  ///*
  /// IWA compatibility. Specified the token supply type. Defaults to INFINITE
  public var supplyType: Proto_TokenSupplyType {
    get {return _storage._supplyType}
    set {_uniqueStorage()._supplyType = newValue}
  }

  ///*
  /// IWA Compatibility. Depends on TokenSupplyType. For tokens of type FUNGIBLE_COMMON - the
  /// maximum number of tokens that can be in circulation. For tokens of type NON_FUNGIBLE_UNIQUE -
  /// the maximum number of NFTs (serial numbers) that can be minted. This field can never be
  /// changed!
  public var maxSupply: Int64 {
    get {return _storage._maxSupply}
    set {_uniqueStorage()._maxSupply = newValue}
  }

  ///*
  /// The key which can change the token's custom fee schedule; must sign a TokenFeeScheduleUpdate
  /// transaction
  public var feeScheduleKey: Proto_Key {
    get {return _storage._feeScheduleKey ?? Proto_Key()}
    set {_uniqueStorage()._feeScheduleKey = newValue}
  }
  /// Returns true if `feeScheduleKey` has been explicitly set.
  public var hasFeeScheduleKey: Bool {return _storage._feeScheduleKey != nil}
  /// Clears the value of `feeScheduleKey`. Subsequent reads from it will return its default value.
  public mutating func clearFeeScheduleKey() {_uniqueStorage()._feeScheduleKey = nil}

  ///*
  /// The custom fees to be assessed during a CryptoTransfer that transfers units of this token
  public var customFees: [Proto_CustomFee] {
    get {return _storage._customFees}
    set {_uniqueStorage()._customFees = newValue}
  }

  ///*
  /// The Key which can pause and unpause the Token.
  /// If Empty the token pause status defaults to PauseNotApplicable, otherwise Unpaused.
  public var pauseKey: Proto_Key {
    get {return _storage._pauseKey ?? Proto_Key()}
    set {_uniqueStorage()._pauseKey = newValue}
  }
  /// Returns true if `pauseKey` has been explicitly set.
  public var hasPauseKey: Bool {return _storage._pauseKey != nil}
  /// Clears the value of `pauseKey`. Subsequent reads from it will return its default value.
  public mutating func clearPauseKey() {_uniqueStorage()._pauseKey = nil}

  ///*
  /// Metadata of the created token definition.
  public var metadata: Data {
    get {return _storage._metadata}
    set {_uniqueStorage()._metadata = newValue}
  }

  ///*
  /// The key which can change the metadata of a token
  /// (token definition, partition definition, and individual NFTs).
  public var metadataKey: Proto_Key {
    get {return _storage._metadataKey ?? Proto_Key()}
    set {_uniqueStorage()._metadataKey = newValue}
  }
  /// Returns true if `metadataKey` has been explicitly set.
  public var hasMetadataKey: Bool {return _storage._metadataKey != nil}
  /// Clears the value of `metadataKey`. Subsequent reads from it will return its default value.
  public mutating func clearMetadataKey() {_uniqueStorage()._metadataKey = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_TokenCreateTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenCreateTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "symbol"),
    3: .same(proto: "decimals"),
    4: .same(proto: "initialSupply"),
    5: .same(proto: "treasury"),
    6: .same(proto: "adminKey"),
    7: .same(proto: "kycKey"),
    8: .same(proto: "freezeKey"),
    9: .same(proto: "wipeKey"),
    10: .same(proto: "supplyKey"),
    11: .same(proto: "freezeDefault"),
    13: .same(proto: "expiry"),
    14: .same(proto: "autoRenewAccount"),
    15: .same(proto: "autoRenewPeriod"),
    16: .same(proto: "memo"),
    17: .same(proto: "tokenType"),
    18: .same(proto: "supplyType"),
    19: .same(proto: "maxSupply"),
    20: .standard(proto: "fee_schedule_key"),
    21: .standard(proto: "custom_fees"),
    22: .standard(proto: "pause_key"),
    23: .same(proto: "metadata"),
    24: .standard(proto: "metadata_key"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _symbol: String = String()
    var _decimals: UInt32 = 0
    var _initialSupply: UInt64 = 0
    var _treasury: Proto_AccountID? = nil
    var _adminKey: Proto_Key? = nil
    var _kycKey: Proto_Key? = nil
    var _freezeKey: Proto_Key? = nil
    var _wipeKey: Proto_Key? = nil
    var _supplyKey: Proto_Key? = nil
    var _freezeDefault: Bool = false
    var _expiry: Proto_Timestamp? = nil
    var _autoRenewAccount: Proto_AccountID? = nil
    var _autoRenewPeriod: Proto_Duration? = nil
    var _memo: String = String()
    var _tokenType: Proto_TokenType = .fungibleCommon
    var _supplyType: Proto_TokenSupplyType = .infinite
    var _maxSupply: Int64 = 0
    var _feeScheduleKey: Proto_Key? = nil
    var _customFees: [Proto_CustomFee] = []
    var _pauseKey: Proto_Key? = nil
    var _metadata: Data = Data()
    var _metadataKey: Proto_Key? = nil

    #if swift(>=5.10)
      // This property is used as the initial default value for new instances of the type.
      // The type itself is protecting the reference to its storage via CoW semantics.
      // This will force a copy to be made of this reference when the first mutation occurs;
      // hence, it is safe to mark this as `nonisolated(unsafe)`.
      static nonisolated(unsafe) let defaultInstance = _StorageClass()
    #else
      static let defaultInstance = _StorageClass()
    #endif

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _symbol = source._symbol
      _decimals = source._decimals
      _initialSupply = source._initialSupply
      _treasury = source._treasury
      _adminKey = source._adminKey
      _kycKey = source._kycKey
      _freezeKey = source._freezeKey
      _wipeKey = source._wipeKey
      _supplyKey = source._supplyKey
      _freezeDefault = source._freezeDefault
      _expiry = source._expiry
      _autoRenewAccount = source._autoRenewAccount
      _autoRenewPeriod = source._autoRenewPeriod
      _memo = source._memo
      _tokenType = source._tokenType
      _supplyType = source._supplyType
      _maxSupply = source._maxSupply
      _feeScheduleKey = source._feeScheduleKey
      _customFees = source._customFees
      _pauseKey = source._pauseKey
      _metadata = source._metadata
      _metadataKey = source._metadataKey
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
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._name) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._symbol) }()
        case 3: try { try decoder.decodeSingularUInt32Field(value: &_storage._decimals) }()
        case 4: try { try decoder.decodeSingularUInt64Field(value: &_storage._initialSupply) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._treasury) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._adminKey) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._kycKey) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._freezeKey) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._wipeKey) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._supplyKey) }()
        case 11: try { try decoder.decodeSingularBoolField(value: &_storage._freezeDefault) }()
        case 13: try { try decoder.decodeSingularMessageField(value: &_storage._expiry) }()
        case 14: try { try decoder.decodeSingularMessageField(value: &_storage._autoRenewAccount) }()
        case 15: try { try decoder.decodeSingularMessageField(value: &_storage._autoRenewPeriod) }()
        case 16: try { try decoder.decodeSingularStringField(value: &_storage._memo) }()
        case 17: try { try decoder.decodeSingularEnumField(value: &_storage._tokenType) }()
        case 18: try { try decoder.decodeSingularEnumField(value: &_storage._supplyType) }()
        case 19: try { try decoder.decodeSingularInt64Field(value: &_storage._maxSupply) }()
        case 20: try { try decoder.decodeSingularMessageField(value: &_storage._feeScheduleKey) }()
        case 21: try { try decoder.decodeRepeatedMessageField(value: &_storage._customFees) }()
        case 22: try { try decoder.decodeSingularMessageField(value: &_storage._pauseKey) }()
        case 23: try { try decoder.decodeSingularBytesField(value: &_storage._metadata) }()
        case 24: try { try decoder.decodeSingularMessageField(value: &_storage._metadataKey) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if !_storage._symbol.isEmpty {
        try visitor.visitSingularStringField(value: _storage._symbol, fieldNumber: 2)
      }
      if _storage._decimals != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._decimals, fieldNumber: 3)
      }
      if _storage._initialSupply != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._initialSupply, fieldNumber: 4)
      }
      try { if let v = _storage._treasury {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      } }()
      try { if let v = _storage._adminKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      } }()
      try { if let v = _storage._kycKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      } }()
      try { if let v = _storage._freezeKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      } }()
      try { if let v = _storage._wipeKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      } }()
      try { if let v = _storage._supplyKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      } }()
      if _storage._freezeDefault != false {
        try visitor.visitSingularBoolField(value: _storage._freezeDefault, fieldNumber: 11)
      }
      try { if let v = _storage._expiry {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
      } }()
      try { if let v = _storage._autoRenewAccount {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 14)
      } }()
      try { if let v = _storage._autoRenewPeriod {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 15)
      } }()
      if !_storage._memo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._memo, fieldNumber: 16)
      }
      if _storage._tokenType != .fungibleCommon {
        try visitor.visitSingularEnumField(value: _storage._tokenType, fieldNumber: 17)
      }
      if _storage._supplyType != .infinite {
        try visitor.visitSingularEnumField(value: _storage._supplyType, fieldNumber: 18)
      }
      if _storage._maxSupply != 0 {
        try visitor.visitSingularInt64Field(value: _storage._maxSupply, fieldNumber: 19)
      }
      try { if let v = _storage._feeScheduleKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 20)
      } }()
      if !_storage._customFees.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._customFees, fieldNumber: 21)
      }
      try { if let v = _storage._pauseKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 22)
      } }()
      if !_storage._metadata.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._metadata, fieldNumber: 23)
      }
      try { if let v = _storage._metadataKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 24)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_TokenCreateTransactionBody, rhs: Proto_TokenCreateTransactionBody) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._symbol != rhs_storage._symbol {return false}
        if _storage._decimals != rhs_storage._decimals {return false}
        if _storage._initialSupply != rhs_storage._initialSupply {return false}
        if _storage._treasury != rhs_storage._treasury {return false}
        if _storage._adminKey != rhs_storage._adminKey {return false}
        if _storage._kycKey != rhs_storage._kycKey {return false}
        if _storage._freezeKey != rhs_storage._freezeKey {return false}
        if _storage._wipeKey != rhs_storage._wipeKey {return false}
        if _storage._supplyKey != rhs_storage._supplyKey {return false}
        if _storage._freezeDefault != rhs_storage._freezeDefault {return false}
        if _storage._expiry != rhs_storage._expiry {return false}
        if _storage._autoRenewAccount != rhs_storage._autoRenewAccount {return false}
        if _storage._autoRenewPeriod != rhs_storage._autoRenewPeriod {return false}
        if _storage._memo != rhs_storage._memo {return false}
        if _storage._tokenType != rhs_storage._tokenType {return false}
        if _storage._supplyType != rhs_storage._supplyType {return false}
        if _storage._maxSupply != rhs_storage._maxSupply {return false}
        if _storage._feeScheduleKey != rhs_storage._feeScheduleKey {return false}
        if _storage._customFees != rhs_storage._customFees {return false}
        if _storage._pauseKey != rhs_storage._pauseKey {return false}
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._metadataKey != rhs_storage._metadataKey {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
