//
//  ActivityView.swift
//  TravelAppUI
//
//  Created by Muhammad Khan on 9/5/21.
//

import SwiftUI

struct ActivityView: View {
    
    let activity: Activity
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .bottomLeading) {
                // image with activity title
                Image(activity.imageName)
                    .resizable()
                    .frame(height: 200)
                
                HStack {
                    Text(activity.title)
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundColor(.white)
                    Spacer()
                }
                .foregroundColor(.white)
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.4), Color.black.opacity(0.01)]),
                        startPoint: .bottom,
                        endPoint: .top)
                )
            }
            
            VStack(alignment: .leading, spacing: 20) {
                // activity detail
                InfoItemView(title: "ADDRESS", description: activity.address)
                HStack {
                    InfoItemView(title: "DURATION", description: activity.duration)
                    Spacer()
                    InfoItemView(title: "OCCUPANCY", description: activity.occupancy)
                    Spacer()
                }
                if activity.needBooking {
                    // book view
                    ActivityBookView(price: activity.price, previousPrice: activity.previousPrice)
                }
            }
            .padding()
            .background(Color.white)
        }.cornerRadius(15)
    }
}
