//
//  SurfSpotRow.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 03/05/2022.
//

import SwiftUI

struct SurfSpotRow: View {
    
    var surfSpot: SurfSpot
    
    var body: some View {
        HStack {
            surfSpot.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(surfSpot.Surf_Break)
            
            Spacer()
        }
    }
}

struct SurfSpotRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SurfSpotRow(surfSpot: surfSpots[0])
            SurfSpotRow(surfSpot: surfSpots[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
