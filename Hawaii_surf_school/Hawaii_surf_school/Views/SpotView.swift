//
//  ContentView.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 02/05/2022.
//

import SwiftUI


struct SpotView: View {
    var body: some View {
        SurfSpotList()
    }
}

struct SpotView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SpotView()
                .environmentObject(ModelSurfSpotsData())
        }
    }
}
