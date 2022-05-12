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
                    }
                    
                    HStack {
                        Text(surfSpot.fields.address)
                            .font(.subheadline)
                        Spacer()
                        
                        Text("Difficulté : \(surfSpot.fields.difficultyLevel) * 🌊")
                        
                    }
                    
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                  

                    Text("Saison de surf")
                          .font(.title3)
                          .fontWeight(.semibold)
                          .foregroundColor(Color.blue)
                    
                    Text("Début : \(surfSpot.fields.seasonStart)")
                        .font(.subheadline)
                        .foregroundColor(Color.green)

                    Text("Fin : \(surfSpot.fields.seasonEnd)")
                        .font(.subheadline)
                        .padding(.bottom)
                        .foregroundColor(Color.red)
                    
                    Text("Météo des vagues ☀️")
                          .font(.title3)
                          .fontWeight(.semibold)
                          .foregroundColor(Color.blue)
                    
                    Text("\(surfSpot.fields.link)")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
            
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

