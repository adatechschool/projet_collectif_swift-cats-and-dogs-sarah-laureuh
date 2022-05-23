//
//  surfSpots.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let surfSpot = try? newJSONDecoder().decode(SurfSpot.self, from: jsonData)

import Foundation

import SwiftUI
import Foundation
import CoreLocation
import UIKit

// MARK: - SurfSpot
struct SurfSpot: Decodable {
    let records: [Record]
}

// MARK: - Record
struct Record: Codable, Identifiable {
    let id, createdTime, surfBreak: String
    let difficultyLevel: Int
    let destination: String
    let latitude: Float64
    let longitude: Float64
    let magicSeaweedLink: String
    let photos: String
    let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String

    enum CodingKeys: String, CodingKey {
        case id, createdTime
        case surfBreak = "Surf Break"
        case difficultyLevel = "Difficulty Level"
        case destination = "Destination"
        case latitude = "Latitude"
        case longitude = "Longitude"
        case magicSeaweedLink = "Magic Seaweed Link"
        case photos = "Photos"
        case peakSurfSeasonBegins = "Peak Surf Season Begins"
        case destinationStateCountry = "Destination State/Country"
        case peakSurfSeasonEnds = "Peak Surf Season Ends"
        case address = "Address"
    }
}

