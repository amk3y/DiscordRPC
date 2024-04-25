import Foundation

public class Activity: Codable {
    let name: String? = nil
    let type: ActivityType
    let timestamps: Timestamps?
    let applicationId: String? = nil
    let state: String?
    let details: String?
    let assets: Assets?
    let buttons: [Button]?
    
    let createdAt: Int? = nil

    // not implemented
    let url: String? = nil
    let emoji: String? = nil
    let party: String? = nil
    let secrets: String? = nil
    let instance: Bool? = nil
    let flags: Int? = nil
    
    public init(type: ActivityType, timestamps: Timestamps?, state: String?, details: String?, assets: Assets?, buttons: [Button]?) {
        self.type = type
        self.timestamps = timestamps
        self.state = state
        self.details = details
        self.assets = assets
        self.buttons = buttons
    }
    
    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case url
        case createdAt = "created_at"
        case timestamps
        case applicationId = "application_id"
        case state
        case details
        case emoji
        case party
        case assets
        case secrets
        case instance
        case flags
        case buttons
    }
}
