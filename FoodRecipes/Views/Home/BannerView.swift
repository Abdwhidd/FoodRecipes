//
//  BannerView.swift
//  FoodRecipes
//
//  Created by Wahid on 06/07/22.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        HStack {
            Text("🥗")
                .font(.system(size: 90))
            
            VStack(alignment: .leading,spacing: 10) {
                Text("You have 20 recipes to try.")
                    .font(.body)
                    .foregroundColor(.black)
                
                Button("See recipes") {}
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("lightGreen"), in: RoundedRectangle(cornerRadius: 20))
        
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
