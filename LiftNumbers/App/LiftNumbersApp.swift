//
//  LiftNumbersApp.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 05/05/2026.
//
import FirebaseCore
import SwiftUI
import GooglePlaces


@main
struct LiftNumbersApp: App {
    
    @StateObject var authViewModel = AuthViewModel()
    @StateObject var workoutViewModel = WorkoutViewModel()
    @StateObject var gymViewModel = GymViewModel()
    @StateObject var userViewModel = UserViewModel()
    
    init() {
        FirebaseApp.configure()
        GMSPlacesClient.provideAPIKey(APIKeys.googlePlaces)
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
                .environmentObject(workoutViewModel)
                .environmentObject(gymViewModel)
                .environmentObject(userViewModel)
        }
    }
}
