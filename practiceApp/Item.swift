//
//  Item.swift
//  practiceApp
//
//  Created by Hisanori Shimakawa on 2024/01/10.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    var content: String
    
    init(timestamp: Date, content: String) {
        self.timestamp = timestamp
        self.content = content
    }
}
