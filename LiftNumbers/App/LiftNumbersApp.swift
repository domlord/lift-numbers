//
//  LiftNumbersApp.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 05/05/2026.
//
import FirebaseCore
import SwiftUI


@main
struct LiftNumbersApp: App {
    
    @StateObject var authViewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
        }
    }
}
