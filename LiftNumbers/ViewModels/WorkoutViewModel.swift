//
//  WorkoutViewModel.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 01/06/2026.
//

import Foundation
import FirebaseAuth

@MainActor
class WorkoutViewModel: ObservableObject {
    
    // published properties
    
    @Published var currentSession: WorkoutSession? = nil
    @Published var sessions: [WorkoutSession] = []
    @Published var isLoading = false
    @Published var errorMessage = ""
    @Published var isSessionActive = false
    
    private let firestoreService = FirestoreService.shared
    
    // session management
    
    func startSession(gym: Gym) {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        
        currentSession = WorkoutSession(
            id: UUID().uuidString,
            userId: userId,
            date: Date(),
            gymId: gym.id,
            gymName: gym.name,
            exercises: []
        )
        isSessionActive = true
    }
    
    func finishSession() async {
        guard let session = currentSession else { return }
        isLoading = true
        
        do {
            try await firestoreService.saveWorkoutSession(session)
            sessions.insert(session, at: 0)
            currentSession = nil
            isSessionActive = false
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
    
    func cancelSession() {
        currentSession = nil
        isSessionActive = false
    }
    
    // exercise management
    
    func addExercise(_ machine: Machine, gym: Gym) {
        guard currentSession != nil else { return }
        
        let exercise = LoggedExercise(
            id: UUID().uuidString,
            machineName: machine.name,
            brandName: machine.brandName,
            muscleGroup: machine.muscleGroup,
            gymId: gym.id,
            gymName: gym.name,
            sets: []
        )
        currentSession?.exercises.append(exercise)
    }
    
    func removeExercise(exerciseId: String) {
        currentSession?.exercises.removeAll { $0.id == exerciseId}
    }
    
    // set management
    
    func addSet(to exerciseId: String, weight: Double, reps: Int, unit: WeightUnit) {
        guard let exerciseIndex = currentSession?.exercises.firstIndex(where: { $0.id == exerciseId}) else { return }
        
        let setNumber = (currentSession?.exercises[exerciseIndex].sets.count ?? 0) + 1
        
        let newSet = WorkoutSet(
            id: UUID().uuidString,
            setNumber: setNumber,
            weight: weight,
            reps: reps,
            unit: unit
        )
        
        currentSession?.exercises[exerciseIndex].sets.append(newSet)
    }
    
    func removeSet(from exerciseId: String, setId: String) {
        guard let exerciseIndex = currentSession?.exercises.firstIndex(where: { $0.id == exerciseId}) else {return}
        currentSession?.exercises[exerciseIndex].sets.removeAll { $0.id == setId}
    }
    
    func updateSet(in exerciseId: String, setId: String, weight: Double, reps: Int) {
        guard let exerciseIndex = currentSession?.exercises.firstIndex(where: { $0.id == exerciseId}),
              let setIndex = currentSession?.exercises[exerciseIndex].sets.firstIndex(where: { $0.id == setId})
        else {return}
        
        currentSession?.exercises[exerciseIndex].sets[setIndex].weight = weight
        currentSession?.exercises[exerciseIndex].sets[setIndex].reps = reps
    }
    
    // history
    
    func fetchSessions() async {
        guard let userId = Auth.auth().currentUser?.uid else { return}
        isLoading = true
        
        do {
            sessions = try await firestoreService.fetchWorkoutSessions(userId: userId)
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
    
}
