//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-03.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

//#Preview {
//    BrandItemView()
//}

struct BrandItemView_previews: PreviewProvider{
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits )
            .padding()
            .background(colorBackground)
    }
}
