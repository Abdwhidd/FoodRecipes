//
//  DescHeaderView.swift
//  FoodRecipes
//
//  Created by Wahid on 07/07/22.
//

import SwiftUI

struct DescHeaderView: View {
    
    @Binding var stepsShowing: Bool
    
    var recipe: Recipe
    
    var body: some View {
        VStack {
            VStack {
                Text(recipe.name)
                    .font(.title2)
                
                Text("\(recipe.cookTime) | \(recipe.servings)")
                    .foregroundColor(.secondary)
                
                Picker("", selection: $stepsShowing) {
                    Text("Ingredinets")
                        .tag(false)
                    Text("Steps")
                        .tag(true)
                }.labelsHidden()
                    .pickerStyle(.segmented)
            }
        }
    }
}

struct DescHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DescHeaderView(stepsShowing: .constant(false), recipe: Recipe.sampleData[0])
    }
}
