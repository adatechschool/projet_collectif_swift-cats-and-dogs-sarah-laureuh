//
//  SurfSpotList.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI

struct SurfSpotList: View {
    var body: some View {
        NavigationView {
            List(surfSpots) { surfSpot in
                NavigationLink {
                    SurfSpotDetail(surfSpot: surfSpot)
                } label: {
                    SurfSpotRow(surfSpot: surfSpot)
                }
            }
            .navigationTitle("Surf Spots de fifou")
        }
    }
}

struct SurfSpotList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    SurfSpotList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }

    }
}
