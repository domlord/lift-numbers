//
//  MainTabView.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 29/05/2026.
//

import Foundation
import SwiftUI

struct MainTabView : View {
    @EnvironmentObject var authViewModel : AuthViewModel
    
    var body: some View {
        TabView {
            LogWorkoutView()
                .tabItem {
                    Label("Workout", systemImage: "dumbbell")
                }
            HistoryView()
                .tabItem {
                    Label("History", systemImage: "clock")
                    
                }
            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: "chart.line.uptrend.xyaxis") //icons from apple's build in icon library sf symbols
                }
            ProfileView()
                .tabItem {
                    Label("Progile", systemImage: "person")
                }
        }
    }
}
