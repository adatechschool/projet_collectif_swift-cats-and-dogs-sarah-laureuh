//
//  Records.swift
//  Hawaii_surf_school
//
//  Created by Sarah Watremet on 05/05/2022.
//

import Foundation

struct Records: Hashable, Codable, Identifiable {
    var id: Int
    var fields: Fields
    var createdTime: String
}
