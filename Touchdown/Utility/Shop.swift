//
//  Shop.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-04-15.
//

import Foundation

class Shop :ObservableObject{
    @Published var showingProducts : Bool = false
    @Published var selectedProdcut: Product? = nil
}
