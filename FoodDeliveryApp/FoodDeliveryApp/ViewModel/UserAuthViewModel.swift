//
//  MainViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/17/24.
//

import Foundation

final class UserAuthViewModel: ObservableObject {
    // MARK: - Properties
    static var shared: UserAuthViewModel = UserAuthViewModel()

    @Published var txtPhoneNumber: String = ""
    @Published var txtVerificationCode: String = ""
    @Published var isUserLoggedIn: Bool = false
    @Published var userObj: User?
    
    @Published var showError = false
    @Published var errorMessage = ""
    
//    init() {
//        if Utils.UDValueBool(key: Globals.userLogin) {
//            // User is logged in
//            self.setUserData(uDict: Utils.UDValue(key: Globals.userPayload) as? NSDictionary ?? [:])
//        } else {
//            // User is not logged in
//        }
//    }
//    
//    func logout() {
//        Utils.UDSET(data: false, key: Globals.userLogin)
//        isUserLoggedIn = false
//        userObj = nil
//    }
//    
//    // MARK: - Service Call for Login with Phone Number
//        
//    func serviceCallLogin() {
//            if txtPhoneNumber.isEmpty {
//                self.errorMessage = "Please enter a valid phone number"
//                self.showError = true
//                return
//            }
//            
//            // Assume sendVerificationCode is a method to send a verification code to the user's phone
//            ServiceCall.post(parameter: ["phone_number": txtPhoneNumber], path: Globals.SV_SEND_VERIFICATION_CODE) { responseObj in
//                if let response = responseObj as? NSDictionary {
//                    if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                        // Verification code sent successfully
//                        self.errorMessage = "Verification code sent to your phone"
//                        self.showError = true
//                    } else {
//                        self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Failed to send verification code"
//                        self.showError = true
//                    }
//                }
//            } failure: { error in
//                self.errorMessage = error?.localizedDescription ?? "Failed to send verification code"
//                self.showError = true
//            }
//        }
//        
//        // MARK: - Service Call for Verifying Code and Logging In
//       
//    func serviceCallVerifyCode() {
//            if txtVerificationCode.isEmpty {
//                self.errorMessage = "Please enter the verification code"
//                self.showError = true
//                return
//            }
//            
//            ServiceCall.post(parameter: ["phone_number": txtPhoneNumber, "verification_code": txtVerificationCode], path: Globals.SV_VERIFY_CODE) { responseObj in
//                if let response = responseObj as? NSDictionary {
//                    if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                        // Verification successful, user logged in
//                        self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
//                    } else {
//                        self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Verification failed"
//                        self.showError = true
//                    }
//                }
//            } failure: { error in
//                self.errorMessage = error?.localizedDescription ?? "Verification failed"
//                self.showError = true
//            }
//        }
//        
//        func setUserData(uDict: NSDictionary) {
//            Utils.UDSET(data: uDict, key: Globals.userPayload)
//            Utils.UDSET(data: true, key: Globals.userLogin)
//            self.userObj = UserModel(dict: uDict)
//            self.isUserLoggedIn = true
//            
//            self.txtPhoneNumber = ""
//            self.txtVerificationCode = ""
//        }
    }
        

        
        
        
        
       
