//
//  FooterView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-03-19.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment:.center, spacing: 10) {
            Text("we offer the most cutting edge, comfortable, lightweight and durable football helemts in the market at affordable prices." )
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .layoutPriority(2)

            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Dhruvin Mulani\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }
        .padding()
    }
}

#Preview {
    FooterView()
}
