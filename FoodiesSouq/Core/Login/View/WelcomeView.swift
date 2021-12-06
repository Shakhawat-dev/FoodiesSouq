//
//  LoginView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 10/16/21.
//

import SwiftUI

struct WelcomeView: View {
    
    let screen = UIScreen.main.bounds
    @State var phone: String = ""
    
    var body: some View {
        ZStack {
            Image("login-background")
                .resizable()
            
            LinearGradient(colors: [Color.theme.white.opacity(0), Color.theme.gradientDarkBlue], startPoint: .top, endPoint: .bottom)
            
            VStack {
                HStack {
                    Spacer()
                    Text("Skip")
                        .font(Font.theme.sofiaPro_14)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(
                            Capsule()
                                .fill(Color.theme.white)
                        )
                }
                
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome to")
                            .font(Font.theme.sofiaPro_48)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.theme.black)
                        
                        Text("FoodHub")
                            .font(Font.theme.sofiaPro_42)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.theme.primary)
                        
                        Text("Your favourite foods delivered \nfast at your door.")
                            .font(Font.theme.sofiaPro_18)
                            .foregroundColor(Color.theme.textColor)
                        
                        VStack{}
                            .frame(height: 132)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                VStack(spacing: 20.0) {
                    HStack(spacing: 24) {
                        Color.theme.white.opacity(0.5)
                            .frame(width: screen.width * 0.24, height: 1)
                        
                        Text("Sign in with")
                            .font(Font.theme.sofiaPro_14)
                            .foregroundColor(Color.theme.white)
                            
                        Color.theme.white.opacity(0.5)
                            .frame(width: screen.width * 0.24, height: 1)
                    }
                    
                    TransparentTextFieldView(text: $phone, hint: "Login with phone")
                    
                    HStack {
                        Text("Already have an account?")
                            .font(Font.theme.sofiaPro_14)
                            .foregroundColor(Color.theme.white)
                        Text("Sign In")
                            .font(Font.theme.sofiaPro_14)
                            .foregroundColor(Color.theme.white)
                            .underline()
                        
                    }
                }
            }
            .padding(32)
                
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
        }
    }
}

