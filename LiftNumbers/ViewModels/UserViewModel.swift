//
//  UserViewModel.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 11/06/2026.
//

import Foundation
import FirebaseAuth

@MainActor
class UserViewModel: ObservableObject {
    // published properties
    
    @Published var profile: UserProfile? = nil
    @Published var isLoading = false
    @Published var errorMessage = ""
    
    private let firestoreService = FirestoreService.shared
    
    // profile
    
    func fetchProfile() async {
        guard let userId = Auth.auth().currentUser?.uid else { return}
        isLoading = true
        
        do {
            profile = try await firestoreService.fetchUserProfile(userId: userId)
        } catch {
            // if profile doesnt exist yet create
            await createProfile()
        }
        
        isLoading = false
    }
    
    func createProfile() async {
        guard let user = Auth.auth().currentUser else { return}
        
        let newProfile = UserProfile(
            id: user.uid,
            email: user.email ?? "",
            defaultUnit: .kg
        )
        
        do {
            try await firestoreService.saveUserProfile(newProfile)
            profile = newProfile
        } catch {
            errorMessage = error.localizedDescription
        }
    }
    
    // settings
    
    func updateDefaultUnit(_ unit: WeightUnit) async {
        guard var updatedProfile = profile else { return }
        updatedProfile.defaultUnit = unit
        
        do {
            try await firestoreService.saveUserProfile(updatedProfile)
            profile = updatedProfile
        } catch {
            errorMessage = error.localizedDescription
        }
    }
    
    // helpers
    
    var defaultUnit: WeightUnit {
        return profile?.defaultUnit?? .kg
    }
}
