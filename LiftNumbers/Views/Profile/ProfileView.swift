//
//  ProfileView.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 29/05/2026.
//

import SwiftUI

struct ProfileView : View {
    
    @EnvironmentObject var authViewModel : AuthViewModel
    
    var body : some View {
        VStack(spacing: 20) {
            Text("Profile")
                .font(.largeTitle)
                .bold()
            
            Button("Log Out") {
                authViewModel.logOut()
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
        }
    }
}
