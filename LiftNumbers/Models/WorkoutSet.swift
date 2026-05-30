//
//  WorkoutSet.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

struct WorkoutSet: Identifiable, Codable {
    var id: String
    var setNumber: Int
    var weight: Double
    var reps: Int
    var unit: WeightUnit
}

enum WeightUnit: String, Codable {
    case kg = "kg"
    case lbs = "lbs"
}
