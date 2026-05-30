//
//  Gym.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

struct Gym: Identifiable, Codable {
    var id: String
    var name: String
    var address: String
    var latitude: Double
    var longitude: Double
    var createdBy: String
    var equipment: [GymEquipment]
}

struct GymEquipment: Codable, Hashable {
    var machineId: String
    var brandName: String
    var machineName: String
    var muscleGroup: MuscleGroup
}
