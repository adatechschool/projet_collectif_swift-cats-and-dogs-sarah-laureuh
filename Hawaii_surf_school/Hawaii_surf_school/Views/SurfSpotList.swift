//
//  SurfSpotList.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI

struct SurfSpotList: View {
    @EnvironmentObject var ModelSurfSpotsData: ModelSurfSpotsData
    @State private var showFavoritesOnly =  false
    
    var filteredSurfSpots: [SurfSpot] {
        ModelSurfSpotsData.surfSpots.filter { surfSpot in
                (!showFavoritesOnly || surfSpot.isFavorite)
            }
        }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredSurfSpots) { surfSpot in
                    NavigationLink {
                        SurfSpotDetail(surfSpot: surfSpot)
                    } label: {
                        SurfSpotRow(surfSpot: surfSpot)
                    }
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
                        .environmentObject(ModelSurfSpotsData())
                }
        

    }
}
