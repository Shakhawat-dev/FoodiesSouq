//
//  OnBoardingView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 1/12/21.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - PROPERTIES
    var page: OnBoardingModel
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image(page.image)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Spacer()
            }
            
            VStack(spacing: 20.0) {
                Spacer()
                
                Text(page.title)
                    .font(Font.theme.sofiaPro_36)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(Color.theme.textTitleColor)
                
                Text(page.description)
                    .font(Font.theme.sofiaPro_17)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(Color.theme.textSubTitleColor)
                
//                Spacer(minLength: 96)
            }
            .padding(.top, 128)
            

        }
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5) ) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(page: onboardingData[1])
    }
}
