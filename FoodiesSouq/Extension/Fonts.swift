//
//  Fonts.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 25/11/21.
//

import Foundation
import SwiftUI

extension Font {
    static let theme = CustomFonts()
}

struct CustomFonts {
    let sofiaPro_14 = Font.custom("Sofia Pro Regular", size: 14)
    let sofiaPro_18 = Font.custom("Sofia Pro Regular", size: 18)
    let sofiaPro_42 = Font.custom("Sofia Pro Regular", size: 42)
    let sofiaPro_48 = Font.custom("Sofia Pro Regular", size: 48)
}
