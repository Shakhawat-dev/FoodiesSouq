//
//  OnboardingTabContainerView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 6/12/21.
//

import SwiftUI

struct OnboardingTabContainerView: View {
    //MARK: PROPERTIES
    var pages: [OnBoardingModel] = onboardingData
    
    var body: some View {
        VStack(spacing: 48.0) {
            TabView {
                ForEach(pages) { item in
                    OnBoardingView(page: item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
            Button {
                // Do Something
            } label: {
                Image(systemName: "arrow.right")
                    .modifier(CircleBackModifier())
            }
//            .padding(.top, 32)
            .padding(.bottom)
        }
        
    }
}

struct OnboardingTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTabContainerView()
    }
}
