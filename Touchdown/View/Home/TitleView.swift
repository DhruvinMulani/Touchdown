//
//  TitleView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-02.
//

import SwiftUI

struct TitleView: View {

    var title : String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
        }//hstack
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
        
    }
    
}

#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
