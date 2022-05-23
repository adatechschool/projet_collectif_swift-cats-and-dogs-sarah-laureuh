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
        modelSurfSpotsData.surfSpots.firstIndex(where: {$0.id == surfSpot.id})!
    }
    
    var body: some View {
        ZStack{
            AppColor.main.ignoresSafeArea()
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2D(latitude: surfSpot.latitude, longitude: surfSpot.longitude))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                
            AsyncImage(url: URL(string: surfSpot.photos)) { image in
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
                        Text(surfSpot.destination)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(AppColor.title)
                            .multilineTextAlignment(.center)
                            .padding(-3.0)
                    }
                    
                    HStack {
                        Text(surfSpot.address)
                            .font(.subheadline)
                        Spacer()
                        
                        Text("Difficulté : \(surfSpot.difficultyLevel) * 🌊")
                        
                    }
                    
                    .font(.subheadline)
                    .foregroundColor(AppColor.text)
                    
                    Divider()
                  

                    Text("Saison de surf")
                          .font(.title3)
                          .fontWeight(.semibold)
                          .foregroundColor(AppColor.title)
                    
                    Text("Début : \(surfSpot.peakSurfSeasonBegins)")
                        .font(.subheadline)
                        .foregroundColor(AppColor.begin)

                    Text("Fin : \(surfSpot.peakSurfSeasonEnds)")
                        .font(.subheadline)
                        .padding(.bottom)
                        .foregroundColor(AppColor.end)
                    
                    Link("Météo des vagues ☀️", destination: URL(string: surfSpot.magicSeaweedLink)!)
                        .font(.title2)
                        .foregroundColor(AppColor.title)
                
                }
                .padding()
                Spacer()
            }
            .navigationTitle(surfSpot.surfBreak)
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

