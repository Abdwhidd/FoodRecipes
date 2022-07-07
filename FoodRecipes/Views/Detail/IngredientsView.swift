//
//  IngredientsView.swift
//  FoodRecipes
//
//  Created by Wahid on 07/07/22.
//

import SwiftUI

struct IngredientsView: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                Text("Ingredients")
                    .font(.title2)
                    .padding(.top, 40)
                
                Spacer()
                
                Text("\(recipe.ingredients.count) item")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            
            ForEach(recipe.ingredients, id: \.self) { ingredient in
                HStack(alignment: .center) {
                    Text(ingredient.emoji)
                        .padding(10)
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    Text(ingredient.name)
                    Spacer()
                    Text(ingredient.quantity)
                        .multilineTextAlignment(.trailing)
                }
                .padding(.vertical)
            }
        }
    }
}

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView(recipe: Recipe.sampleData[1])
    }
}
