//
//  SurfSpotDetail.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI

struct SurfSpotDetail: View {
    @EnvironmentObject var ModelSurfSpotsData: ModelSurfSpotsData
    var surfSpot: Record

    
    var surfSpotIndex: Int {
        ModelSurfSpotsData.surfSpots.records.firstIndex(where: { $0.id == surfSpot.id })!

    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: surfSpot.fields.geocode)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            RectangleImage(image: surfSpot.fields.photos)
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(surfSpot.fields.surfBreak[0])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        .padding(-3.0)
                    FavoriteButton(isSet: $ModelSurfSpotsData.surfSpots[surfSpotIndex].isFavorite)
                }
                HStack {
                    Text(surfSpot.fields.address)
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
        .navigationTitle(surfSpot.fields.surfBreak[0])
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurfSpotDetail_Previews: PreviewProvider {
    static let modelSurfSpotsData = ModelSurfSpotsData()
    
    static var previews: some View {
        SurfSpotDetail(surfSpot: ModelSurfSpotsData().surfSpots.records[0])
            .environmentObject(modelSurfSpotsData)
    }
}

