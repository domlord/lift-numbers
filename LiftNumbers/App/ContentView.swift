//
//  ContentView.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 05/05/2026.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authViewModel = AuthViewModel()

    var body: some View {
        if authViewModel.isLoggedIn {
            Text("Main App")
        }
        else {
            LoginView()
        }
    }
}

