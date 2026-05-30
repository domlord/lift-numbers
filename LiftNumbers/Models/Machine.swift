//
//  Machine.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

struct Machine: Identifiable, Codable, Hashable {
    var id: String
    var name: String
    var muscleGroup: MuscleGroup
    var brandName: String
}
