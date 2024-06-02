//
//  AuthViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/2/24.
//

import SwiftUI
import Combine
import FirebaseAuth
//import GoogleSignIn
//import SwiftyVK

class AuthViewModel: ObservableObject {
    @Published var user: User? = nil
    @Published var isAuthenticated = false
    @Published var verificationCode: String = ""
    @Published var phoneNumber: String = ""
    @Published var additionalInfo: UserAdditionalInfo = UserAdditionalInfo ()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        // Подписка на изменения пользователя
        Auth.auth().addStateDidChangeListener {auth, user in
            self.user = user
            self.isAuthenticated = user != nil
        }
    }
    
    
    func sendVerificationCode() {
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) {
            verificationID, error in
            
            if let error = error {
                print("Error sendig verification code: \(error.localizedDescription)")
                return
            }
            UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
        }
    }
    
    
    func verifyCode() {
        let verificationID = UserDefaults.standard.string(forKey: "authVerificationID") ?? ""
        let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationID, verificationCode: verificationCode)
        
        Auth.auth().signIn(with: credential) { authResult, error in
            
            if let error = error {
                print("Error verifying code: \(error.localizedDescription)")
                return
            }
            self.isAuthenticated = true
        }
    }
    
    
//    func signInWithGoogle() {
//        guard let clientID = FirebaseApp.app()?.options.clientID else {return}
//        
//        let config = GIDConfiguration(clientID: clientID)
//        GIDSignIn.sharedInstance.signIn(with: config, prenting: UIApplication.shared.windows.first?.rootViewController) { user, error in
//            
//            if let error = error {
//                print("Error signing in with Google: \(error.localizedDescription)")
//                return
//            }
//            
//            guard let authentication = user?.authentication,
//                  let idToken = authentication.idToken else {
//                return
//            }
//            
//            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)
//            Auth.auth().signIn(with: credential) { authResult, error in
//                
//                if let error = error {
//                    print("Firebase sign in error: \(error.localizedDescription)")
//                }
//            }
//        }
//    }
    
    
    func signInWithVK() {
        
    }
    
    
    func updateAdditionalInfo() {
        guard let currentUser = Auth.auth().currentUser else {return}
        let changeRequest = currentUser.createProfileChangeRequest()
        changeRequest.displayName = additionalInfo.firstName + " " + additionalInfo.lastName
        changeRequest.commitChanges { error in
            if let error = error {
                print("Error updating profile: \(error.localizedDescription)")
            }
            
        }
        
        currentUser.updateEmail(to: additionalInfo.email) { error in
            if let error = error {
                print("Error updating email: \(error.localizedDescription)")
            }
        }
    }
    
    
}

    




struct UserAdditionalInfo {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var address: String = ""
}
