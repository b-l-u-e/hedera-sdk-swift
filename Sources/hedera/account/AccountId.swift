public struct AccountId {
    let shard: UInt64
    let realm: UInt64
    let num: UInt64
    
    public init(shard: UInt64 = 0, realm: UInt64 = 0, num: UInt64) {
        self.shard = shard
        self.realm = realm
        self.num = num
    }

    /// Create an AccountId with shard and realm set to 0.
    public init(_ num: UInt64) {
        self = AccountId(num: num)
    }
}

extension AccountId: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        return "\(shard).\(realm).\(num)"
    }
    
    public var debugDescription: String {
        return description
    }
}

extension AccountId: LosslessStringConvertible {
    /// Create an AccountId from a String. It's valid to have just the account number, e.g. "1000",
    /// in which case the shard and realm will default to 0.
    public init?(_ description: String) {
        let parts = description.split(separator: ".")

        // Giving just the account number is fine, we default the rest of the parameters to 0
        if parts.count == 1 {
            guard let num = UInt64(parts[parts.startIndex], radix: 10) else { return nil }
            self = AccountId(num: num)
        } else if parts.count == 3 {
            // In that case we probably have a full account id  
            guard let shard = UInt64(parts[parts.startIndex], radix: 10) else { return nil }
            guard let realm = UInt64(parts[parts.startIndex.advanced(by: 1)], radix: 10) else { return nil }
            guard let num = UInt64(parts[parts.startIndex.advanced(by: 2)], radix: 10) else { return nil }
            
            self = AccountId(shard: shard, realm: realm, num: num)
        } else {
            return nil
        }
    }
}

extension AccountId: Equatable {
    public static func == (lhs: AccountId, rhs: AccountId) -> Bool {
        return lhs.shard == rhs.shard && lhs.realm == rhs.realm && lhs.num == rhs.num
    }
}

extension AccountId: Hashable {}