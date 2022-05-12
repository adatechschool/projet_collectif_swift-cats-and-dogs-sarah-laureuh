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
            AsyncImage(url: URL(string: surfSpot.fields.photos[0].thumbnails.large.url)) { image in
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
