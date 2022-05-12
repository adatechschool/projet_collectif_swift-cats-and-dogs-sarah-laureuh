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
            AsyncImage(url: URL(string: surfSpot.fields.photos[0].thumbnails.small.url)) { image in
                image
                        .resizable()
                        .clipShape(Rectangle())
                        .shadow(radius: 7)
                        .cornerRadius(10)
                    } placeholder: {
                    ProgressView()
                    }
            .frame(width: 50, height: 50)
            
            Text(surfSpot.fields.destination)
                .fontWeight(.semibold)
            
            Spacer()
            
        }
    }
}

struct SurfSpotRow_Previews: PreviewProvider {
    static var surfSpots = ModelSurfSpotsData().surfSpots
    static var previews: some View {
        Group {
            SurfSpotRow(surfSpot: surfSpots[0])
            SurfSpotRow(surfSpot: surfSpots[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
