//
//  Hawaii_surf_schoolApp.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 02/05/2022.
//

import SwiftUI

@main
struct Hawaii_surf_schoolApp: App {
    @StateObject private var modelSurfSpotsData = ModelSurfSpotsData()
    
    var body: some Scene {
        WindowGroup {
            SpotView()
                .environmentObject(modelSurfSpotsData)
        }
    }
}
