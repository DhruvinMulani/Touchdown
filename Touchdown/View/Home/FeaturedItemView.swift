//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-03-19.
//

import SwiftUI


struct FeaturedItemView: View {
//MARK: - Property
   let player : Player
    
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12 )
    }
}

#Preview {
    FeaturedItemView(player: players[0])
}
