//
//  AppOnboarding.swift
//  FoodRecipes
//
//  Created by Wahid on 05/07/22.
//

import Foundation

struct AppOnboarding: Identifiable {
    let id = UUID().uuidString
    var title: String
    var detail: String
    var animationName: String
}

extension AppOnboarding {
    static var data: [AppOnboarding] {
        [
            AppOnboarding(title: "Welcome to\nFood Recipes!", detail: "Serach Cook and enjoy freslhy mode food at you home. Find step by step recipes with food Recipes App.", animationName: "onboarding1"),
            
            AppOnboarding(title: "Pick fresh\ningredients", detail: "Best tasting food comes from fresh ingredients. Find list of ingredients with Food Recipes App.", animationName: "onboarding2"),
            
            AppOnboarding(title: "Cook to nperfection", detail: "Delicious food take its own time to get ready. Find list of step to cook your food to the perfection.", animationName: "onboarding3"),
            
            AppOnboarding(title: "Enjoy your\nhomemade meal!", detail: "enjoy your home cooked food with your friends and family", animationName: "onboarding4"),
        ]
    }
}
