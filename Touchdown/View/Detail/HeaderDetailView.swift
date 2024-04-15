//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-03.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop : Shop

    var body: some View {
        VStack (alignment: .leading,spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProdcut?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())

}
