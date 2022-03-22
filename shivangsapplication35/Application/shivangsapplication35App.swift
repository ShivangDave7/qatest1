//
//  shivangsapplication35App.swift
//  shivangsapplication35

import SwiftUI

@main
struct shivangsapplication35App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            AppnavigationView()
        }
    }
}
