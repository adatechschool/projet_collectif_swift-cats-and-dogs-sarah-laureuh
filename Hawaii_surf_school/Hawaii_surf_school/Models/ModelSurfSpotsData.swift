//
//  ModelSurfSpots.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import Foundation
import Combine

final class ModelSurfSpotsData: ObservableObject {
    
    @Published var surfSpots: [Records] = load("surfSpotsData.json")
    //@Published var records: [SurfSpot] = surfSpots[0]
}

//func value(forKeyPath keyPath: String) -> Any? {
//    return
//}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
