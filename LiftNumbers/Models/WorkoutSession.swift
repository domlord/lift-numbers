//
//  WorkoutSession.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

struct WorkoutSession: Identifiable, Codable {
    var id: String
    var userId: String
    var date: Date
    var gymId: String
    var gymName: String
    var exercises: [LoggedExercise]
}
