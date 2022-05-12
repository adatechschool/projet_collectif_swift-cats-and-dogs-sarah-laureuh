//
//  SurfSpotDetail.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI
import MapKit


struct SurfSpotDetail: View {
    
    @EnvironmentObject var modelSurfSpotsData: ModelSurfSpotsData
    var surfSpot: Record

    
    var surfSpotIndex: Int {
        return 0 //modelSurfSpotsData.surfSpots.firstIndex(where: { $0.id == surfSpot.id })!

    }
    
    var body: some View {
        ScrollView {
            VStack{
                
                MapView()

                AsyncImage(url: URL(string: surfSpot.fields.photos[0].thumbnails.large.url)) { image in
                    image
                            .resizable()
                            .scaledToFill()
                            .clipShape(Rectangle())
                            .shadow(radius: 7)
                            .cornerRadius(10)
                            .offset(y: -100)
                            .padding(.bottom, -90)
                        } placeholder: {
                        ProgressView()
                        }
                .frame(width: 300, height: 150)
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(surfSpot.fields.destination)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                            .multilineTextAlignment(.center)
                            .padding(-3.0)
    //                    FavoriteButton(isSet: $ModelSurfSpotsData.surfSpots[surfSpotIndex].isFavorite)
                    }
                    
                    HStack {
                        Text(surfSpot.fields.address)
                            .font(.subheadline)
                        Spacer()
                        Text("hello world")
                        
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
}

struct SurfSpotDetail_Previews: PreviewProvider {
    static let modelSurfSpotsData = ModelSurfSpotsData()
    
    static var previews: some View {
        SurfSpotDetail(surfSpot: ModelSurfSpotsData().surfSpots[0])
            .environmentObject(modelSurfSpotsData)
        
    }
}

