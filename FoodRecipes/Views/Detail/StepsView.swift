//
//  StepsView.swift
//  FoodRecipes
//
//  Created by Wahid on 07/07/22.
//

import SwiftUI

struct StepsView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .lastTextBaseline) {
                Text("Steps")
                    .font(.title2)
                    .padding(.top, 40)
                Spacer()
                Text("\(recipe.steps.count) steps")
            }
            
            ForEach(recipe.steps, id: \.self) { step in
                Text(step)
                    .padding(.vertical)
            }
        }
    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        StepsView(recipe: Recipe.sampleData[1])
    }
}

