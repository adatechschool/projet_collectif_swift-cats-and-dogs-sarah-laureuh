//
//  ContentView.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 02/05/2022.
//

import SwiftUI

struct SpotView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            Hossegor()
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text("Hossegor")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.center)
                    .padding(-3.0)
                HStack {
                    Text("Spot in South West of France")
                        .font(.subheadline)
                    Spacer()
                    Text("")
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()

                Text("About Hossegor")
                      .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

struct SpotView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SpotView()
        }
    }
}
