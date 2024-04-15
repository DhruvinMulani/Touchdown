//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-03.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop : Shop
    
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
                .zIndex(1)
            //detail bottom part
            VStack(alignment: .center,spacing:0, content: {
            
            // rating + size
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom,10)
            // description
                ScrollView(.vertical, showsIndicators:false, content: {
                    Text(shop.selectedProdcut?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                })//scroll
    
                //quentity + favourite
                
                QuantityFavouriteDetailView()
                    .padding(.vertical,20)
            
            //add to cart
                AddToCartDetailView()
                    .padding(.bottom,20)
            
            Spacer()
            })//vstack
            .padding(.horizontal)
            .background(Color.white
                .clipShape(CustomShape())
                .padding(.top,-105))
        })
        .zIndex(0)

        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red:shop.selectedProdcut?.red ?? sampleProduct.red,
                green: shop.selectedProdcut?.green ?? sampleProduct.green,
                blue: shop.selectedProdcut?.blue ?? sampleProduct.blue)
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
        .previewLayout(.fixed(width: 375, height: 812))
}
