//
//  surfSpots.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct SurfSpot: Hashable, Codable {
    var Surf_Break: String
    var Address: String
    
//    private var Photos: String
//        var image: Image {
//            Image(Photos)
//        }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude)
       }

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}
