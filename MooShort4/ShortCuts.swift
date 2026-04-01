//
//  Untitled.swift
//  SiriExample_ShortCuts
//
//  Created by Quanpeng Yang on 4/1/26.
//

import AppIntents

struct TestIntentsShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: ShowMovie(),
            phrases: [
                "Show me my favorite movie in \(.applicationName)",
                "Find my favorite movie in \(.applicationName)"
            ],
            shortTitle: LocalizedStringResource("Get Movie"),
            systemImageName: "star.circle"
        )
    }
}
