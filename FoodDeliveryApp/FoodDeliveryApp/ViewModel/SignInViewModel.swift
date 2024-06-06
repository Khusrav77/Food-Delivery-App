//
//  SignInViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/6/24.
//

import SwiftUI
import Combine

final class SignInViewModel: ObservableObject{
    @Published var mobileNumber: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""
    @Published var isCodeSent: Bool = false
    @Published var verificationCode: String = ""
    @Published var isSignedIn: Bool = false
    
    var isLoadinButtonDisabled: Bool {
        !isPhoneNuberValid(mobileNumber)
    }

    var isVerifiButtonDisabled: Bool {
        verificationCode.isEmpty
    }
    
    func sendCode() {
        isLoading = true
        
    }
    
    func verifyCode() {
        isLoading = true
    }
    
    
    private func isPhoneNuberValid(_ number: String) -> Bool {
        let cleanedNumber = number.filter{ $0.isNumber}
        return cleanedNumber.count == 10
    }
}
