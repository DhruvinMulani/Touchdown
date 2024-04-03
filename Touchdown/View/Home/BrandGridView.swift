//
//  BrandFridView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-03.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content:  {
            LazyHGrid(rows:gridLayout, spacing: columnSpacing, content: {
                ForEach(brands){ brand in
                BrandItemView(brand: brand)}
            })
            .frame(height:200)
            .padding(15)
        })
    }
}

#Preview {
    BrandGridView()
}
