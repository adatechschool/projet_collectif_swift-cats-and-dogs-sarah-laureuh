//
//  ContentView.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 02/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hawaii Surf School")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .padding(-3.0)
            HStack {
                Text("Best spots around the globe")
                    .font(.subheadline)
                Spacer()
                Text("Yo")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
