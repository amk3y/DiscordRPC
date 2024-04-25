//
//  File.swift
//  
//
//  Created by amk3y on 2024/4/25.
//

import Foundation


public enum ActivityType: Int, Codable{
    
    case Game = 0
    case Streaming = 1
    case Listening = 2
    case Watching = 3
    case Custom = 4
    case Competing = 5
}
