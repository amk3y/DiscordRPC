//
//  File.swift
//  
//
//  Created by amk3y on 2024/4/25.
//

import Foundation

public class Timestamps: Codable{
    
    private let start: Int
    private let end: Int
    
    public init(start: Int, end: Int) {
        self.start = start
        self.end = end
    }
    
    private enum CodingKeys: String, CodingKey {
        case start
        case end
    }
}
