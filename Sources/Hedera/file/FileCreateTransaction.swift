import SwiftProtobuf
import Foundation
import Sodium

public class FileCreateTransaction: TransactionBuilder {
    public override init(client: Client) {
        super.init(client: client)

        body.fileCreate = Proto_FileCreateTransactionBody()

        setExpirationTime(Date(timeIntervalSinceNow: 7898))
    }

    @discardableResult
    public func setExpirationTime(_ date: Date) -> Self {
        body.fileCreate.expirationTime = date.toProto()

        return self
    }

    @discardableResult
    public func addKey(_ key: Ed25519PublicKey) -> Self {
        body.fileCreate.keys.keys.append(key.toProto())

        return self
    }

    @discardableResult
    public func setContents(_ data: Data) -> Self {
        body.fileCreate.contents = data 

        return self
    }

    @discardableResult
    public func setContents(_ bytes: Bytes) -> Self {
        body.fileCreate.contents = Data(bytes) 

        return self
    }

    @discardableResult
    public func setContents(_ string: String) -> Self {
        body.fileCreate.contents = Data(Array(string.utf8))

        return self
    }

    override func executeClosure(_ grpc: HederaGRPCClient, _ tx: Proto_Transaction) throws -> Proto_TransactionResponse {
        try grpc.fileService.createFile(tx)
    }
}