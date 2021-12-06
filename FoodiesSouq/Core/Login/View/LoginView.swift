//
//  LoginView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 7/12/21.
//

import SwiftUI

struct LoginView: View {
    @StateObject var vm: AuthViewModel = AuthViewModel()
    
    var body: some View {
        ZStack(alignment: .center) {
            BackgroundView {
                VStack(alignment: .center, spacing: 30.0) {
                    HStack {
                        Text("Login")
                            .font(Font.theme.sofiaPro_36)
                            .bold()
                        
                        Spacer()
                    }
                    
                    TitledEditTextView(title: "Phone Number", placeHolder: "Your phone number", text: $vm.phone)
                    
                    TitledEditTextView(title: "Password", placeHolder: "Password", text: $vm.password, isSecured: true)
                    
                    Text("Forgot Password?")
                        .font(Font.theme.sofiaPro_14)
                        .foregroundColor(Color.theme.primary)
                    
                    Button {
                        // Do something
                    } label: {
                        HStack {
                            Spacer()
                            Text("Login")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .frame(width: 248)
                        .modifier(CapsuleBackModifier())
                    }
                    
                    HStack {
                        Text("Don’t have an account?")
                            .foregroundColor(Color.theme.textSubTitleColor)
                        Text("Sign Up")
                            .foregroundColor(Color.theme.primary)
                    }
                    .font(Font.theme.sofiaPro_14)
                    

                }
            }
                
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
