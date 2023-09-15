//
//  Mohamedsapplication6App.swift
//  Mohamedsapplication6

import SwiftUI

@main
struct Mohamedsapplication6App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
