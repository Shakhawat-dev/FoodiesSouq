//
//  CircleBackModifier.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 1/12/21.
//

import Foundation

import SwiftUI

struct CircleBackModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .padding(24)
            .foregroundColor(Color.theme.white)
            .background(
                Circle()
                    .foregroundColor(Color.theme.primary)
            )
    }
}



struct CircleBackModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
            .modifier(CircleBackModifier())
    }
}
