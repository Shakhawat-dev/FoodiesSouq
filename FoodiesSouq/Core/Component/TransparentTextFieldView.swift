//
//  TransparentTextFieldView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 24/11/21.
//

import SwiftUI

struct TransparentTextFieldView: View {
    @Binding var text: String
    @State var hint: String = ""
    
    var body: some View {
        if #available(iOS 15.0, *) {
            TextField("", text: $text)
                .placeholder(hint, when: text.isEmpty)
                .padding()
                .foregroundColor(Color.white)
                .tint(.white)
                .background(
                    Capsule()
                        .fill(Color.white.opacity(0.3))
                        .overlay(
                            Capsule()
                                .stroke(lineWidth: 1)
                                .fill(Color.white)
                        )
                )
        } else {
            // Fallback on earlier versions
            TextField("", text: $text)
                .placeholder(hint, when: text.isEmpty)
                .padding()
                .foregroundColor(Color.white)
                .accentColor(.white)
                .background(
                    Capsule()
                        .fill(Color.white.opacity(0.3))
                        .overlay(
                            Capsule()
                                .stroke(lineWidth: 1)
                                .fill(Color.white)
                        )
                )
        }
        
    }
}

struct TransparentTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TransparentTextFieldView(text: .constant(""), hint: "hello")
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

extension View {
    func placeholder(
        _ text: String,
        when shouldShow: Bool,
        alignment: Alignment = .center) -> some View {
            
        placeholder(when: shouldShow, alignment: alignment) { Text(text).foregroundColor(.white) }
    }
}
