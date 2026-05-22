//
//  SignUpView.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 11/05/2026.
//

import SwiftUI

struct SignUpView : View {
    
    @EnvironmentObject var authViewModel : AuthViewModel
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body : some View {
        VStack(spacing: 20) {
            
            
            Text("Create account")
                .font(.largeTitle)
                .bold()
            
            TextField("Email", text : $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            if password != confirmPassword && !confirmPassword.isEmpty {
                Text("Passwords do not match")
                    .foregroundColor(.red)
                    .font(.caption)
            }
            
            if !authViewModel.errorMessage.isEmpty {
                Text(authViewModel.errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }
            
            if authViewModel.isLoading {
                ProgressView()
            } else {
                Button("Sign up") {
                    Task {
                        await authViewModel.signUp(email: email, password: password)
                    }
                }
                .buttonStyle(.borderedProminent)
                .disabled(password != confirmPassword || email.isEmpty || password.isEmpty)
            }
        }
        .padding()
    }
}
