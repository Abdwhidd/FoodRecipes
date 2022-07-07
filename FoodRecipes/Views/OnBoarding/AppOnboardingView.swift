//
//  AppOnboardingView.swift
//  FoodRecipes
//
//  Created by Wahid on 05/07/22.
//

import SwiftUI

struct AppOnboardingView: View {
    
    @Binding var showOnboarding: Bool
    var steps = AppOnboarding.data
    
    @State private var selection = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(0..<steps.count, id: \.self) { idx in
                    VStack(spacing: 0) {
                        Text(steps[idx].title)
                            .font(.largeTitle)
                        Rectangle()
                            .fill(Color.secondary.opacity(0.2))
                            .frame(height: 1)
                        
                        VStack(alignment: .leading) {
                            LottieView(name: steps[idx].animationName)
                                .scaledToFit()
                            
                            Text(steps[idx].detail)
                        }.padding()
                        
                    }
                    .tag(idx)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            HStack {
                Spacer()
                Button {
                    withAnimation{
                        if selection < steps.count - 1 {
                            selection += 1
                        } else {
                            showOnboarding.toggle()
                        }
                    }
                } label: {
                    if selection == steps.count - 1 {
                        Image(systemName: "checkmark.circle")
                            .font(.largeTitle)
                    } else {
                        Image(systemName: "chevron.right.circle")
                            .font(.largeTitle)
                    }
                }
            }
            .padding()
            .foregroundColor(.primary)
        }
    }
}

struct AppOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        AppOnboardingView(showOnboarding: .constant(true))
    }
}
