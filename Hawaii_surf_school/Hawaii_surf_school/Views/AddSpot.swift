//
//  AddSpotView.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 24/05/2022.
//

import SwiftUI

struct AddSpot: View {
    @State private var destination = ""
    @State private var surfBreak = ""
    @State private var address = ""
    @State private var difficultyLevel = 1
    
    var body: some View {
        NavigationView {
            Form {
                
                TextField("Nom de ton spot", text: $destination)
                TextField("Type de spot", text: $surfBreak)
                TextField("Adresse", text: $address)
                Stepper(value: $difficultyLevel,
                        in: 1...5,
                        label: {
                    Text("Niveau de difficulté : \(self.difficultyLevel)")
                })
                Button(action: {
                    print("Spot submitted")
                }, label: {
                    Text("Post ton Spot")
                })
            }.navigationBarTitle(Text("Surf Spot Yeaah !!!"))
        }
    }
}

struct AddSpot_Previews: PreviewProvider {
    static var previews: some View {
        AddSpot()
    }
}
