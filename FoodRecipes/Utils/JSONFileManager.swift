//
//  JSONFileManager.swift
//  FoodRecipes
//
//  Created by Wahid on 06/07/22.
//

import Foundation

class JSONFileManager {
    static func load<T: Decodable>(_ filename: String) -> T {
        var data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find the file named in main bundle: \(filename).")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("File couldn't the loaded \(filename).")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse the file \(filename).")
        }
    }
}
