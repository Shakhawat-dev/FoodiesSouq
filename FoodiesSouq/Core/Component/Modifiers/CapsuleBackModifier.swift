//
//  CapsuleBackModifier.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 7/12/21.
//

import SwiftUI

struct CapsuleBackModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.theme.sofiaPro_17)
            .textCase(.uppercase)
            .padding(20)
            .foregroundColor(Color.theme.white)
            .background(
                Capsule()
                    .foregroundColor(Color.theme.primary)
                    .shadow(color: Color.theme.primary.opacity(0.4), radius: 10, x: 2, y: 10)
            )
    }
}

struct CapsuleBackModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
            .modifier(CapsuleBackModifier())
    }
}
