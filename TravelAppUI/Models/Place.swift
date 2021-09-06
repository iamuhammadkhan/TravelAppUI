//
//  Place.swift
//  TravelAppUI
//
//  Created by Muhammad Khan on 9/5/21.
//

import Foundation
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let index: Int
    let name: String
    let date: String
    let imageName: String
    let location: CLLocationCoordinate2D
    let departureDayLeft: String
    let activities: [Activity]
}
