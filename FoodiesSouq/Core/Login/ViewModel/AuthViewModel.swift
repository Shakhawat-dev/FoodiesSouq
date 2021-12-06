//
//  AuthViewModel.swift
//  FoodiesSouq
//
//  Created by Shakhawat Hossain Shahin on 7/12/21.
//

import Foundation

class AuthViewModel: ObservableObject {
    @Published var phone: String = ""
    @Published var password: String = ""
}
