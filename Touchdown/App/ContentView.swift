//
//  ContentView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-03-19.
//

import SwiftUI

struct ContentView: View {
 //MARK: - property
    var body: some View {
        ZStack {
            VStack (spacing:0){
                NavigationbarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x:0,y:5)

                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing : 0){
                        
                        FeaturedTabView()
                            .padding(.vertical,20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)

                        CategoryGridView()

                        FooterView()
                            .padding(.horizontal)
                    }
                })
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
}
