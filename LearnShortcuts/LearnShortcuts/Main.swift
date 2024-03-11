//
//  Main.swift
//  LearnShortcuts
//
//  Created by Gong Zhang on 2024/3/11.
//

import SwiftUI
import AppIntents

struct MyAppShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(intent: MyIntent(),
                    phrases: [
                        "Run my intent with \(.applicationName)",
                    ],
                    shortTitle: "My Shortcuts",
                    systemImageName: "square.and.pencil"
        )
    }
}

struct MyIntent: AppIntent {
    static var title: LocalizedStringResource = "MyIntent"
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}

@main
struct LearnShortcutsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}
