import HederaProtoServices

public final class AccountId {
  let id: EntityId

  init(_ entity: EntityId) {
    id = entity
  }
}

extension AccountId: ProtobufConvertible {
  func toProtobuf() -> Proto_AccountID {
    var proto = Proto_AccountID()
    proto.shardNum = Int64(id.shard)
    proto.realmNum = Int64(id.realm)
    proto.accountNum = Int64(id.num)
    return proto
  }

  public convenience init(_ proto: Proto_AccountID) {
    self.init(EntityId(proto))
  }
}

extension AccountId: Equatable {
  public static func == (lhs: AccountId, rhs: AccountId) -> Bool {
    lhs.id == rhs.id
  }
}

extension AccountId: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}

extension AccountId: CustomStringConvertible, CustomDebugStringConvertible {
  public var description: String {
    id.description
  }

  public var debugDescription: String {
    id.debugDescription
  }
}

extension AccountId: LosslessStringConvertible {
  public convenience init?(_ description: String) {
    guard let id = EntityId(description) else { return nil }
    self.init(id)
  }
}

extension AccountId {
  public convenience init(shard: UInt64 = 0, realm: UInt64 = 0, num: UInt64) {
    self.init(EntityId(shard: shard, realm: realm, num: num))
  }

  /// Create an AccountId with shard and realm set to 0.
  public convenience init(_ num: UInt64) {
    self.init(EntityId(num: num))
  }

  public var shard: UInt64 {
    id.shard
  }

  public var realm: UInt64 {
    id.realm
  }

  public var account: UInt64 {
    id.num
  }
}
