//
//  LoginView.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 11/05/2026.
//

import SwiftUI

struct LoginView : View {
    @EnvironmentObject var authViewModel: AuthViewModel

    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
          VStack(spacing: 20) {

              Text("LiftNumbers")
                  .font(.largeTitle)
                  .bold()

              TextField("Email", text: $email)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .autocapitalization(.none)
                  .keyboardType(.emailAddress)

              SecureField("Password", text: $password)
                  .textFieldStyle(RoundedBorderTextFieldStyle())

              if !authViewModel.errorMessage.isEmpty {
                  Text(authViewModel.errorMessage)
                      .foregroundColor(.red)
                      .font(.caption)
              }

              if authViewModel.isLoading {
                  ProgressView()
              } else {
                  Button("Log In") {
                      Task {
                          await authViewModel.logIn(email: email, password: password)
                      }
                  }
                  .buttonStyle(.borderedProminent)
              }

              NavigationLink("Don't have an account? Sign up here") {
                  SignUpView()
              }

          }
          .padding()
      }
  }

