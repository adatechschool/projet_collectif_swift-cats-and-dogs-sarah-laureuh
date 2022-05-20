//////
//////  MapView.swift
//////  Hawaii_surf_school
//////
//////  Created by Sarah Watremet on 02/05/2022.
//////
////
import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

//struct MapView_Previews: PreviewProvider {
//    static var surfSpots = ModelSurfSpotsData().surfSpots
//
//    static var previews: some View {
//        MapView(coordinate: CLLocationCoordinate2D(latitude: surfSpots[0].latitude, longitude: surfSpots[0].longitude))
//    }
//}



//struct MapView: View {
//    var coordinate: CLLocationCoordinate2D
//    @State private var region = MKCoordinateRegion()
//
//    var body: some View {
//        Map(coordinateRegion: $region)
//            .onAppear {
//                setRegion(coordinate)
//        }
//    }
//    private func setRegion(_ coordinate: CLLocationCoordinate2D){
//        region = MKCoordinateRegion(
//        center: coordinate,
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var spotCoordo = ModelSurfSpotsData().surfSpots
//    static var previews: some View {
//        MapView(coordinate: CLLocationCoordinate2D(latitude: spotCoordo.records[0].fields.geocode.o.lat, longitude: spotCoordo.records[0].fields.geocode.o.lng))
//    }
//}



// code de la carte statique à utiliser si les coordonnées ne fonctionnent pas 
//struct MapView: View {
//
//    var body: some View {
//        Image("worldMap")
//            .resizable()
//            .frame(height: 250)
//            .ignoresSafeArea(edges: .top)
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
