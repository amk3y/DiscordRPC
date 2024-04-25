//
//  File.swift
//  
//
//  Created by amk3y on 2024/4/25.
//

import Foundation


public class Assets: Codable{
    
    let largeImage: String?
    let largeText: String?
    let smallImage: String?
    let smallText: String?
    
    public init(largeImage: String?, largeText: String?, smallImage: String?, smallText: String?) {
        self.largeImage = largeImage
        self.largeText = largeText
        self.smallImage = smallImage
        self.smallText = smallText
    }
    
    private enum CodingKeys: String, CodingKey {
        case largeImage = "large_image"
        case largeText = "large_text"
        case smallImage = "small_image"
        case smallText = "small_text"
    }
}
