//
//  File.swift
//  
//
//  Created by amk3y on 2024/4/25.
//

import Foundation

class RequestSetActivity: Encodable {
    let cmd: CommandType = .setActivity
    let nonce: String
    let args: RequestSetActivityArgs

    private enum CodingKeys: String, CodingKey {
        case cmd
        case nonce
        case args
    }

    init(nonce: String, args: RequestSetActivityArgs) throws {
        self.nonce = nonce
        self.args = args
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cmd, forKey: .cmd)
        try container.encode(nonce, forKey: .nonce)
        try container.encode(args, forKey: .args)
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString() throws -> String {
        return String(data: try self.jsonData(), encoding: .utf8)!
    }
}

struct RequestSetActivityArgs: Encodable{

    let pid: Int
    let activity: Activity?
    
    init(pid: Int, activity: Activity?) {
        self.pid = pid
        self.activity = activity
    }
    
    private enum CodingKeys: String, CodingKey {
        case pid
        case activity
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pid, forKey: .pid)
        try container.encode(activity, forKey: .activity)
    }
}
