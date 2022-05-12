//
//  Hossegor.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 02/05/2022.
//

import SwiftUI

struct RectangleImage: View {
    var surfSpot: Record
    //var image: Image
    var body: some View {
        
        AsyncImage(url: URL(string: surfSpot.fields.photos[0].thumbnails.small.url))
            
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static let surfSpots = ModelSurfSpotsData().surfSpots

    static var previews: some View {
        AsyncImage(url: URL (string: surfSpots.records[0].fields.photos[0].thumbnails.small.url))
    }
}
