//
//  Geocode.swift
//  Hawaii_surf_school
//
//  Created by gaubert baptiste on 5/10/22.
//

import Foundation

// MARK: - Geocode
struct Geocode: Codable {
    let i: String
    let o: O
    let e: Int
}

// MARK: - O
struct O: Codable {
    let status, formattedAddress: String
    let lat, lng: Double
}
