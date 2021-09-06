//
//  FlightItemView.swift
//  TravelAppUI
//
//  Created by Muhammad Khan on 9/5/21.
//

import SwiftUI

struct FlightItemView: View {
    
    let airport: String
    let shortAirport: String
    let time: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(airport)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.gray)
            
            Text(shortAirport)
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.black)
            
            Text(time)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.white)
                .padding(5)
                .background(Color.orange)
                .cornerRadius(4)
        }
    }
}
