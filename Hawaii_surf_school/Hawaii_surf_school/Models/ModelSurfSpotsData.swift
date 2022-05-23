////
////  ModelSurfSpots.swift
////  Hawaii_surf_school
////
////  Created by Sarah Watremet on 03/05/2022.
////
//
import Foundation
import Combine


//Attempt to call API
final class ModelSurfSpotsData: ObservableObject {
    @Published var surfSpots: [Record] = []

    func getSpots() {
        guard let url = URL(string: "http://localhost:8080/api/spots") else { fatalError("Missing URL") }

        let urlRequest = URLRequest(url: url)

        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }

            if response.statusCode == 200 {
                guard let data = data else { return }
                                DispatchQueue.main.async {
                    do {
                        let decodedRecords = try JSONDecoder().decode(SurfSpot.self, from: data)
                        self.surfSpots = decodedRecords.records
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }

        dataTask.resume()
    }
}


