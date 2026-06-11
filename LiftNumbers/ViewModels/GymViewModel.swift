//
//  GymViewModel.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 08/06/2026.
//

import Foundation
import FirebaseAuth
import CoreLocation

@MainActor
class GymViewModel : ObservableObject {
    // published properties
    
    @Published var searchResults: [Gym] = []
    @Published var nearbyGyms: [Gym] = []
    @Published var selectedGym: Gym? = nil
    @Published var isLoading = false
    @Published var errorMessage = ""
    @Published var searchQuery = ""
    
    private let firestoreService = FirestoreService.shared
    
    // search
    
    func searchGyms() async {
        guard !searchQuery.isEmpty else {
            searchResults = []
            return
        }
        isLoading = true
        
        do {
            searchResults = try await firestoreService.searchGyms(query: searchQuery)
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
    
    // create gym
    
    func createGym(name: String, address: String, lattitude: Double, longitude: Double) async {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        isLoading = true
        
        let gym = Gym(
            id: UUID().uuidString,
            name: name,
            address: address,
            latitude: lattitude,
            longitude: longitude,
            createdBy: userId,
            equipment: []
        )
        
        do {
            try await firestoreService.saveGym(gym)
            searchResults.append(gym)
            selectedGym = gym
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
    
    // helpers
    
    func equipment(for muscleGroup : MuscleGroup) -> [GymEquipment] {
        guard let gym = selectedGym else { return [] }
        return gym.equipment.filter { $0.muscleGroup == muscleGroup }
    }
    
    func allExercises(for muscleGroup: MuscleGroup) -> [Machine] {
        let gymEquipment = equipment(for: muscleGroup).map { equipment in
            Machine(
                id: equipment.machineId,
                name: equipment.machineName,
                muscleGroup: equipment.muscleGroup,
                brandName: equipment.brandName,
                exerciseType: .machine,
                isUniversal: false
            )
        }
        let freeWeights = DefaultExercises.universalExercises(for: muscleGroup)
        return gymEquipment + freeWeights
    }
    
        
                
                
}
