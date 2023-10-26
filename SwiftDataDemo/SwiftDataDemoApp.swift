//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by vignesh kumar c on 26/10/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
