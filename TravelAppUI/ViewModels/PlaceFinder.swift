//
//  PlaceFinder.swift
//  TravelAppUI
//
//  Created by Muhammad Khan on 9/5/21.
//

import SwiftUI
import MapKit

class PlaceFinder: ObservableObject {
    
    @Published var selectedPlace: Place?
    @Published var spots = DataModel.places
    @Published var currentIndex = 0 {
        willSet {
            region.center = CLLocationCoordinate2D(latitude: spots[newValue].location.latitude - 0.05,
                                                   longitude: spots[newValue].location.longitude)
        }
    }
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: DataModel.places[0].location.latitude,
                                                                              longitude: DataModel.places[0].location.longitude),
                                               span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
}
