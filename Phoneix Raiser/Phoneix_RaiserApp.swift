//
//  Phoneix_RaiserApp.swift
//  Phoneix Raiser
//
//  Created by Pradeep's MacBook on 10/11/23.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct Phoneix_RaiserApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { oldValue, newValue in
            if case ScenePhase.active = newValue {
                AppCenter.start(withAppSecret: "567dec3d-575b-4112-b4d9-c6a405d1c6fb", services: [Crashes.self, Analytics.self])
            }
        }
    }
}
