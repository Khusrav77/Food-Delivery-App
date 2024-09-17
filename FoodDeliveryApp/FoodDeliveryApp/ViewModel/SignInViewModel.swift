//
//  SignInViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/6/24.
//

import SwiftUI


final class SignInViewModel: ObservableObject {
    static let shared: SignInViewModel = SignInViewModel()
    
    @Published var phoneNumber: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""
    @Published var isCodeSent: Bool = false
    @Published var verificationCode: String = ""
    @Published var isSignedIn: Bool = false
    
    
    
    var isLoadinButtonDisabled: Bool {
        !isPhoneNuberValid(phoneNumber)
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
    
//    func getCountryCode() -> String {
//        let regionCode = Locale.current.regionCode ?? ""
//        return countries[regionCode] ?? ""
//    }
    
    private func isPhoneNuberValid(_ number: String) -> Bool {
        let cleanedNumber = number.filter{ $0.isNumber}
        return cleanedNumber.count == 10
    }
}
