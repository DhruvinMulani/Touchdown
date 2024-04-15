//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-03.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
     
    var body: some View {
        HStack {
            Button(action:{
                withAnimation(.easeOut) {
                    shop.selectedProdcut = nil
                    shop.showingProducts = false
                }
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                 
                Spacer()

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                  Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                })
            })
        }
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
}
