//
//  SwiftUI_AnimationsApp.swift
//  SwiftUI Animations
//
//  Created by Saba Gogrichiani on 24.12.23.
//

import SwiftUI

@main
struct AnimationsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                MainTaskView()
                    .tabItem {
                        Label("Main", systemImage: "hanger")
                    }
                OptionalTask()
                    .tabItem {
                        Label("Optional", systemImage: "mustache.fill")
                    }
            }
        }
    }
}
