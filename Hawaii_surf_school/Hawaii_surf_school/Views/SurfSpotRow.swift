//
//  SurfSpotRow.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI

struct SurfSpotRow: View {
    
    var surfSpot: Fields
    
    var body: some View {
        HStack {
            surfSpot.photos
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(surfSpot.surfBreak[0])
            
            Spacer()
            
//            if surfSpot.isFavorite {
//                Image(systemName: "star.fill")
//                    .foregroundColor(.yellow)
//                }
        }
    }
}

struct SurfSpotRow_Previews: PreviewProvider {
    static var surfSpots = ModelSurfSpotsData().surfSpots
    static var previews: some View {
        Group {
            SurfSpotRow(surfSpot: surfSpots.records[0].fields)
            SurfSpotRow(surfSpot: surfSpots.records[1].fields)
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
