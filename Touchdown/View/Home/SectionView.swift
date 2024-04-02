//
//  SectionView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-03-26.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockWise : Bool
    
    var body: some View {
        VStack (spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockWise: false)
}
