//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-03-26.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center,spacing: columnSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockWise: false),
                        footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories){
                        category in CategoryItemView(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })
    }
}

#Preview {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
