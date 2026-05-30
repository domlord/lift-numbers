//
//  Brand.swift
//  LiftNumbers
//
//  Created by Dominic Lord on 30/05/2026.
//

import Foundation

struct Brand: Identifiable, Codable {
    var id: String
    var name: String
    var machines: [Machine]
}
