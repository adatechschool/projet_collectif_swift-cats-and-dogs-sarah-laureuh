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
struct SurfSpot: Codable {
    let records: [Record]
}

// MARK: - Record
struct Record: Codable, Identifiable {
    let id, createdTime, surfBreak: String
    let difficultyLevel: Int
    let destination: String
    let geocode: GeocodeUnion
    let magicSeaweedLink: String
    let photos: String
    let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String

    enum CodingKeys: String, CodingKey {
        case id, createdTime
        case surfBreak = "Surf Break"
        case difficultyLevel = "Difficulty Level"
        case destination = "Destination"
        case geocode = "Geocode"
        case magicSeaweedLink = "Magic Seaweed Link"
        case photos = "Photos"
        case peakSurfSeasonBegins = "Peak Surf Season Begins"
        case destinationStateCountry = "Destination State/Country"
        case peakSurfSeasonEnds = "Peak Surf Season Ends"
        case address = "Address"
    }
}

enum GeocodeUnion: Codable {
    case geocodeClass(GeocodeClass)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        if let x = try? container.decode(GeocodeClass.self) {
            self = .geocodeClass(x)
            return
        }
        throw DecodingError.typeMismatch(GeocodeUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for GeocodeUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .geocodeClass(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - GeocodeClass
struct GeocodeClass: Codable {
    let latitude, longitude: Double
}

    
//// MARK: - SpotsData
//struct SurfSpot: Codable {
//    var records: [Record]
//}
//
//// MARK: - Record
//struct Record: Codable, Identifiable {
//    let id: String
//    let fields: Fields
//}
//
//// MARK: - Fields
//struct Fields: Codable,Identifiable {
//    var id: UUID = UUID()
//
//    let surfBreak: [String]
//    let difficultyLevel: Int
//    let destination: String
//    let photos: [Photo]
//    let destinationStateCountry : String
//    let geocode: String
//    let address: String
//    let seasonStart: String
//    let seasonEnd: String
//    let link : String
//
//    enum CodingKeys: String, CodingKey {
//        case surfBreak = "Surf Break"
//        case difficultyLevel = "Difficulty Level"
//        case destination = "Destination"
//        case photos = "Photos"
//        case destinationStateCountry = "Destination State/Country"
//        case address = "Address"
//        case geocode = "Geocode"
//        case seasonStart = "Peak Surf Season Begins"
//        case seasonEnd = "Peak Surf Season Ends"
//        case link = "Magic Seaweed Link"
//    }
//}
//
//// MARK: - Photo
//struct Photo: Codable {
//    //let id: String
//    let url: String
//    //let filename: String
//    //let size: Int
//    //let type: String
//    let thumbnails: Thumbnails
//}
//
//// MARK: - Thumbnails
//struct Thumbnails: Codable {
//    let small, large, full: Resolution
//}
//
//// MARK: - Full
//struct Resolution: Codable {
//    let url: String
//    let width, height: Int
//}
//
////struct Geocode: Codable {
////
////    var i: String
////    var o: Obj
////    var e: Int
////}
////
////struct Obj: Codable {
////    var status, formattedAddress: String, lat, lng: Double
////}
////
////extension String {
////
////    func base64Encoded() -> String? {
////        return data(using: .utf8)?.base64EncodedString()
////    }
////
////    func base64Decoded() -> String? {
////        guard let data = Data(base64Encoded : self, options: .ignoreUnknownCharacters) else
////        { return nil}
////        return String(data: data, encoding: .utf8)
////    }
////}
//////A FINIR
////struct Coordinates : Codable {
////    var latitude : Double
////    var longitude : Double
////}
