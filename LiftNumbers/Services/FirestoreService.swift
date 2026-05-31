//
//  FirestoreService.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 31/05/2026.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import FirebaseAuth

class FirestoreService {
    
    //firestore instance for session
    static let shared = FirestoreService()
    
    private let db = Firestore.firestore()
    
    private init() {}
    
    //user profiles
    
    func saveUserProfile(_ profile: UserProfile) async throws {
        try db.collection("users")
            .document(profile.id)
            .setData(from: profile)
    }
    
    func fetchUserProfile(userId: String) async throws -> UserProfile {
        let snapshot = try await db.collection("users")
            .document(userId)
            .getDocument()
        return try snapshot.data(as: UserProfile.self)
    }
    
    // workout sessions
    
    func saveWorkoutSession(_ session: WorkoutSession) async throws {
        try db.collection("users")
            .document(session.userId)
            .collection("sessions")
            .document(session.id)
            .setData(from: session)
    }
    
    func fetchWorkoutSessions(userId: String) async throws -> [WorkoutSession] {
        let snapshot = try await db.collection("users")
            .document(userId)
            .collection("sessions")
            .order(by: "date", descending: true)
            .getDocuments()
        
        return try snapshot.documents.compactMap {
            try $0.data(as: WorkoutSession.self)
        }
    }
    
    // gyms
    
    func saveGym(_ gym: Gym) async throws {
        try db.collection("gyms")
            .document(gym.id)
            .setData(from: gym)
    }
    
    func fetchGym(gymId: String) async throws -> Gym {
        let snapshot = try await db.collection("gyms")
            .document(gymId)
            .getDocument()
        return try snapshot.data(as: Gym.self)
    }
    
    func searchGyms(query: String) async throws -> [Gym] {
  
            let snapshot = try await db.collection("gyms")
                .whereField("name", isGreaterThanOrEqualTo: query)
                .whereField("name", isLessThanOrEqualTo: query + "\u{f8ff}")
                .limit(to: 20)
                .getDocuments()
            
            return try snapshot.documents.compactMap {
                try $0.data(as: Gym.self)
            }
        }
        
        
        func addEquipmentToGym(gymId: String, equipment: GymEquipment) async throws {
            try await db.collection("gyms")
                .document(gymId)
                .updateData([
                    "equipment": FieldValue.arrayUnion([try Firestore.Encoder().encode(equipment)])
                ])
        }
        
    
}
