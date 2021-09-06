//
//  ActivityBookView.swift
//  TravelAppUI
//
//  Created by Muhammad Khan on 9/5/21.
//

import SwiftUI

struct ActivityBookView: View {
    
    let price: String
    let previousPrice: String
    
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading, spacing: 10) {
                Text("PRICE P/P")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.gray)
                Text(price)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.black)
            }
            Text(previousPrice)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.gray)
                .strikethrough(true, color: Color.black)
            Spacer()
            Button(action: {
            }, label: {
                Text("Book Now")
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color.orange)
                    .cornerRadius(5)
            })
        }
    }
}
