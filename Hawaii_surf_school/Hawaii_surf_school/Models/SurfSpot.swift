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

// MARK: - SurfSpot
struct SurfSpot: Codable {
    let records: [Record]
    let offset: String
}
// MARK: - Record
struct Record: Codable, Identifiable {
    let id: String
    let fields: Fields
    let createdTime: String
}

// MARK: - Fields
struct Fields: Codable {
    let surfBreak: [String]
    let difficultyLevel: Int
    let destination: String
    let geocode: Geocode
    let influencers: [String]
    let magicSeaweedLink: String
    let photos: [Photo]
    let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String
    let isFavorite: Bool

    enum CodingKeys: String, CodingKey {
        case surfBreak = "Surf Break"
        case difficultyLevel = "Difficulty Level"
        case destination = "Destination"
        case geocode = "Geocode"
        case influencers = "Influencers"
        case magicSeaweedLink = "Magic Seaweed Link"
        case photos = "Photos"
        case peakSurfSeasonBegins = "Peak Surf Season Begins"
        case destinationStateCountry = "Destination State/Country"
        case peakSurfSeasonEnds = "Peak Surf Season Ends"
        case address = "Address"
        case isFavorite = "isFavorite"
    }

}


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


// MARK: - Photo
struct Photo: Codable {
    let id, url, filename: String
    let size: Int
    let type: String
    let thumbnails: Thumbnails
    
// MARK: - Thumbnails
struct Thumbnails: Codable {
    let small, large, full: Full
}


// MARK: - Full
struct Full: Codable {
    let url: String
    let width, height: Int
}

}
