//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-03.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing:5, content: {
            //navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetailView()
                .padding(.horizontal)
            //detail top part
            TopPartDetailView()
                .padding(.horizontal)
            //detail bottom part
            
            // rating + size
            
            // description
            
            //quentity + favourite
            
            //add to cart
            Spacer()
        })//vstack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red:sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
            .ignoresSafeArea(.all, edges: .all)  
        )
    }
}

#Preview {
    ProductDetailView()
        .previewLayout(.fixed(width: 375, height: 812))
}
