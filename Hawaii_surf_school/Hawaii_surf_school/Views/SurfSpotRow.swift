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
            Text(surfSpot.Surf_Break)
        }
    }
}

struct SurfSpotRow_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotRow(surfSpot: surfSpots[0])
    }
}
