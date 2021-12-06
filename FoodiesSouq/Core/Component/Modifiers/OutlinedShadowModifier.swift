//
//  OutlinedShadowModifier.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 10/29/21.
//

import SwiftUI

struct OutlinedShadowModifier: ViewModifier {
    var isEditing: Bool = false
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.theme.subTextColor)
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.theme.white)
                    .shadow(color: Color.theme.subDarkGray.opacity(isEditing ? 0.1 : 0.05), radius: 20, x: 0, y: 10)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isEditing ? Color.theme.primary : Color.theme.background, lineWidth: 1)
            )
    }
}

struct OutlinedShadowModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello")
            .modifier(OutlinedShadowModifier())
    }
}
