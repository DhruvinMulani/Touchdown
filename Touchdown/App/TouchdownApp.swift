//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-03-19.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
} 
