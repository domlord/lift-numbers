//
//  LoggedExercise.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

struct LoggedExercise: Identifiable, Codable {
    var id: String
    var machineName: String
    var brandName: String
    var muscleGroup: MuscleGroup
    var gymId: String
    var gymName: String
    var sets: [WorkoutSet]
}
