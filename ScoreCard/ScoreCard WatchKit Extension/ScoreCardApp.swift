//
//  ScoreCardApp.swift
//  ScoreCard WatchKit Extension
//
//  Created by Gavin Back on 1/14/22.
//

import SwiftUI

@main
struct ScoreCardApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
