//
//  Hossegor.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 02/05/2022.
//

import SwiftUI

struct RectangleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 300.0, height: 150.0)
            .clipShape(Rectangle())
            .shadow(radius: 7)
            .cornerRadius(10)
            
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("Point_Break"))
    }
}
