//
//  LoginView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 10/16/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Image("login-background")
                .resizable()
            
            LinearGradient(colors: [Color.theme.darkGray.opacity(0), Color.theme.darkGray], startPoint: .top, endPoint: .bottom)
            
            VStack {
                HStack {
                    Spacer()
                    Text("Skip")
//                        .font(Font.theme.sofiaPro)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(
                            Capsule()
                                .fill(Color.theme.white)
                        )
                }
                
                Text("Welcome to")
                    .font(.custom("sofia_bold.otf", size: 35))
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                
                Spacer()
            }
            .padding(32)
                
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
