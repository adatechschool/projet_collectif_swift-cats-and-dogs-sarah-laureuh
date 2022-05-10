////
////  MapView.swift
////  Hawaii_surf_school
////
////  Created by Sarah Watremet on 02/05/2022.
////
//
import SwiftUI
import MapKit
//
////var locationCoordinate: CLLocationCoordinate2D {
////        CLLocationCoordinate2D(
////            latitude: Geocode.o.lat,
////            longitude: Geocode.o.lng)
////    }
//
//struct MapView: View {
//
//    var spotCoordo: O
////    var coordinate: CLLocationCoordinate2D
//    var locationCoordinate: CLLocationCoordinate2D {
//            CLLocationCoordinate2D(
//                latitude: spotCoordo.lat,
//                longitude: spotCoordo.lng)
//        }
//
//    @State private var region = MKCoordinateRegion()
//
//    var body: some View {
//        Map(coordinateRegion: $region)
//            .onAppear {
//                setRegion(locationCoordinate)
//                       }
//    }
//
//    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
//        region = MKCoordinateRegion(
//                center: coordinate,
//                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//        )
//    }
//}
//
//
//struct MapView_Previews: PreviewProvider {
//    static var spotCoordo = ModelSurfSpotsData().surfSpots
//    static var previews: some View {
//        MapView(spotCoordo: spotCoordo.records[0].fields.geocode.o.lat, spotCoordo.records[0].fields.geocode.o.lng)
//
////        MapView(spotCoordo: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
//    }
//}

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
        }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
        center: coordinate,
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var spotCoordo = ModelSurfSpotsData().surfSpots
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: spotCoordo.records[0].fields.geocode.o.lat, longitude: spotCoordo.records[0].fields.geocode.o.lng))
    }
}
