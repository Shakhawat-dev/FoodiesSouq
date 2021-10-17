//
//  RoundedBackModifier.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 10/18/21.
//

import Foundation
import SwiftUI

struct RoundedBackModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Capsule()
            )
    }
}
