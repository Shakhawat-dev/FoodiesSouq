//
//  BackgroundView.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 7/12/21.
//

import SwiftUI

struct BackgroundView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            Image("registration_background")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            content
                .padding(32)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(content: {
            Text("Hello world")
        })
    }
}
