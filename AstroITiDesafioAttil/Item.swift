//
//  Item.swift
//  AstroITiDesafioAttil
//
//  Created by Macbook AIr on 22/10/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
