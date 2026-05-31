//
//  Machine.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

enum ExerciseType: String, Codable {
    case machine
    case cable
    case barbell
    case dumbbell
    case bodyweight
}

struct Machine: Identifiable, Codable, Hashable {
    var id: String
    var name: String
    var muscleGroup: MuscleGroup
    var brandName: String
    var exerciseType: ExerciseType
    var isUniversal: Bool
}
