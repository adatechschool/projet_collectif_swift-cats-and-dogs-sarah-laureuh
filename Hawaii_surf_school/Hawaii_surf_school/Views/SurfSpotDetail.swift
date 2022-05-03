//
//  SurfSpotDetail.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI

struct SurfSpotDetail: View {
    var surfSpot: SurfSpot
    
    var body: some View {
        ScrollView {
            MapView(coordinate: surfSpot.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            RectangleImage(image: surfSpot.image)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text(surfSpot.Surf_Break)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding(-3.0)
                HStack {
                    Text(surfSpot.Address)
                        .font(.subheadline)
                    Spacer()
                    Text("")
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()

                Text("")
                      .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
        .navigationTitle(surfSpot.Surf_Break)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurfSpotDetail_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotDetail(surfSpot: surfSpots[0])
    }
}

