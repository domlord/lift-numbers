//
//  UserProfile.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

struct UserProfile: Identifiable, Codable {
    var id: String
    var email: String
    var defaultUnit: WeightUnit
}
