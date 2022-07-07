//
//  Ingredient.swift
//  FoodRecipes
//
//  Created by Wahid on 06/07/22.
//

import Foundation

struct Ingredient: Hashable, Codable {
    var quantity: String
    var name: String
    var emoji: String
}
