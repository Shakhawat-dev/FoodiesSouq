//
//  OnBoardingView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 1/12/21.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("onboarding_image_1")
                Spacer()
            }
            
            VStack(spacing: 20.0) {
                Spacer()
                
                Text("Browse your menu and order directly")
                    .font(Font.theme.sofiaPro_36)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(Color.theme.textTitleColor)
                
                Text("Our app can send you everywhere, even space. For only $2.99 per month")
                    .font(Font.theme.sofiaPro_17)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundColor(Color.theme.textSubTitleColor)
                
                Button {
                    // Do Something
                } label: {
                    Image(systemName: "arrow.right")
                        .modifier(CircleBackModifier())
                }
                .padding(.top, 32)
            }
            

        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
