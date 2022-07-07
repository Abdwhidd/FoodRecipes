//
//  ContentView.swift
//  FoodRecipes
//
//  Created by Wahid on 05/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showOnboarding = true
    
    var body: some View {
        if showOnboarding {
            AppOnboardingView(showOnboarding: $showOnboarding)
        } else {
            RecipeListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
