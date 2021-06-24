//
//  NotesAppApp.swift
//  NotesApp WatchKit Extension
//
//  Created by Jalil Fierro on 24/06/21.
//

import SwiftUI

@main
struct NotesAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
