//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-15.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded  ))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()

        })
        .padding(15)
        .background(
            Color(red: shop.selectedProdcut?.red ?? sampleProduct.red,
                  green:shop.selectedProdcut?.green ?? sampleProduct.green,
                  blue:shop.selectedProdcut?.blue ?? sampleProduct.blue))
        .clipShape(.capsule)
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
