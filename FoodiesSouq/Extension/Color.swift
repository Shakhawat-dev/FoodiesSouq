//
//  Color.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 10/18/21.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let primary = Color("PrimaryColor")
    let secondary = Color("SecondaryColor")
    let background = Color("BackgroundColor")
    let darkGray = Color("DarkGrayColor")
    let subDarkGray = Color("SubDarkGrayColor")
    let low = Color("LowColor")
    let subTextColor = Color("SubTextColor")
    let white = Color("WhiteColor")
    let black = Color("Black")
    let gradientDarkBlue = Color("GradientDarkBlue")
    let textColor = Color("TextColor")
}
