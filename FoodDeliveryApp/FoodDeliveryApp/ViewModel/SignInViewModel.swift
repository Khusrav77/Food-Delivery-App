//
//  SignInViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/6/24.
//

import SwiftUI


final class SignInViewModel: ObservableObject {
    // MARK: - Properties
    static let shared: SignInViewModel = SignInViewModel()
    
    @Published var phoneNumber: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""
    @Published var isCodeSent: Bool = false
    @Published var verificationCode: String = ""
    @Published var isSignedIn: Bool = false
    
    var isLoadinButtonDisabled: Bool {
        isPhoneNuberValid(phoneNumber)
    }

    var isVerifiButtonDisabled: Bool {
        verificationCode.isEmpty
    }
    
    // MARK: - Methods
    func sendCode() {
        isLoading = true
        
    }
    
    func verifyCode() {
        isLoading = true
    }
    
    func getCodeAtIndex(index: Int) -> String {
        if verificationCode.count > index {
            let start = verificationCode.startIndex
            let current = verificationCode.index(start, offsetBy: index)
            return String(verificationCode[current])
        }
        return ""
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
