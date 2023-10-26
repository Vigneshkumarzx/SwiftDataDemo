//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by vignesh kumar c on 26/10/23.
//

import Foundation
import SwiftData

@Model
class DataItem : Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
