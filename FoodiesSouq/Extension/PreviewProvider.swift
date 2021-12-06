//
//  PreviewProvider.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 6/12/21.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    private init() { }
    
    let page1 = OnBoardingModel(
        title: "Browse your menu and order directly",
        description: "Our app can send you everywhere, even space. For only $2.99 per month",
        image: "onboarding_image_1"
    )
}
