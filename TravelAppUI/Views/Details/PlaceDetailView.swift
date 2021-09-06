//
//  PlaceDetailView.swift
//  TravelAppUI
//
//  Created by Muhammad Khan on 9/5/21.
//

import SwiftUI

struct PlaceDetailView: View {
    
    @ObservedObject var placeFinder: PlaceFinder
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.5))
                .ignoresSafeArea()
            VStack {
                // Top navigation view
                TopNavigationView(placeFinder: placeFinder)
                ScrollView(.vertical, showsIndicators: false) {
                    // Flight view
                    FlightView()
                    // activites views
                    ForEach(placeFinder.selectedPlace?.activities ?? []) { activity in
                        ActivityView(activity: activity)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
