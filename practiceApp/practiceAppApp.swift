//
//  practiceAppApp.swift
//  practiceApp
//
//  Created by Hisanori Shimakawa on 2024/01/10.
//

import SwiftUI
import SwiftData

@main //エントリーポイント（最初に読み込まれる部分）
struct practiceAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self, // (Item.swiftで定義)
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            // contentにContentViewを使用(ContentView.swiftで定義)
            ContentView()
        }
        .modelContainer(sharedModelContainer) //
    }
}
