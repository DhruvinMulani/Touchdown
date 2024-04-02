//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Dhruvin Mulani on 2024-03-19.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        // locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate\(file) in bundle.")
        }
        
        // create a property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load\(file) from bundle.")
        }
        // create a decoder
        
        let decoder = JSONDecoder()
        //create a property for the decode data
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode\(file) from bundle")
        }
        
        //return the ready to use data
        return decodedData
        
    }
}
