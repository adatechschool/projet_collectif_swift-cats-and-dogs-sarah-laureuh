//
//  SurfSpotRow.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI

struct SurfSpotRow: View {
    
    var surfSpot: Record
    
    var body: some View {
        HStack {
            //surfSpot.photos
                //.resizable()
                //.frame(width: 50, height: 50)
            
            Text(surfSpot.fields.destination)
            
            Spacer()
            
            if surfSpot.fields.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                }
        }
    }
}

struct SurfSpotRow_Previews: PreviewProvider {
    static var surfSpots = ModelSurfSpotsData().surfSpots
    static var previews: some View {
        Group {
            SurfSpotRow(surfSpot: surfSpots.records[0])
            SurfSpotRow(surfSpot: surfSpots.records[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
