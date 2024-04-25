//
//  File.swift
//  
//
//  Created by amk3y on 2024/4/25.
//

import Foundation

public class Button: Codable{
    
    let label: String
    let url: String
    
    public init(label: String, url: String) {
        self.label = label
        self.url = url
    }
    
    private enum CodingKeys: String, CodingKey {
        case label
        case url
    }
}
