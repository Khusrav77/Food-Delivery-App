////
////  AuthService.swift
////  FoodDeliveryApp
////
////  Created by Khusrav Safiev on 6/6/24.
////
//
//import Foundation
//import Firebase
//import FirebaseAuth
//import FirebaseFirestore
//import AuthenticationServices
//
//final class AuthService {
//    static let shared = AuthService()
//    
//    @Published var currentUser: User?
//    
//    private init() {}
//    
//    // Отправка кода подтверждения (Телефон)
//    func sendVerificationCode(phoneNumber: String) async throws {
//        let verificationID = try await PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil)
//        UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
//    }
//    
//    // Проверка кода и вход (Телефон)
//    func verifyCode(verificationCode: String) async throws -> User {
//        guard let verificationID = UserDefaults.standard.string(forKey: "authVerificationID") else {
//            throw NSError(domain: "Verification ID not found", code: 0, userInfo: nil)
//        }
//        
//        let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationID, verificationCode: verificationCode)
//        let authResult = try await Auth.auth().signIn(with: credential)
//        
//        guard let firebaseUser = authResult.user else {
//            throw NSError(domain: "No authenticated user", code: 0, userInfo: nil)
//        }
//        
//        // Указываем метод аутентификации как телефон
//        return try await fetchOrCreateUser(firebaseUser: firebaseUser, authMethod: .phone)
//    }
//    
//    // Вход через Google
//    func signInWithGoogle(token: String) async throws -> User {
//        let credential = GoogleAuthProvider.credential(withIDToken: token, accessToken: token)
//        let authResult = try await Auth.auth().signIn(with: credential)
//        
//        guard let firebaseUser = authResult.user else {
//            throw NSError(domain: "No authenticated user", code: 0, userInfo: nil)
//        }
//        
//        // Указываем метод аутентификации как Google
//        return try await fetchOrCreateUser(firebaseUser: firebaseUser, authMethod: .google)
//    }
//    
//    // Вход через Apple
//    func signInWithApple(idToken: String, nonce: String) async throws -> User {
//        let credential = OAuthProvider.credential(withProviderID: "apple.com", idToken: idToken, rawNonce: nonce)
//        let authResult = try await Auth.auth().signIn(with: credential)
//        
//        guard let firebaseUser = authResult.user else {
//            throw NSError(domain: "No authenticated user", code: 0, userInfo: nil)
//        }
//        
//        // Указываем метод аутентификации как Apple
//        return try await fetchOrCreateUser(firebaseUser: firebaseUser, authMethod: .apple)
//    }
//    
//    // Получение или создание нового пользователя
//    private func fetchOrCreateUser(firebaseUser: FirebaseAuth.User, authMethod: AuthMethod) async throws -> User {
//        let db = Firestore.firestore()
//        let docRef = db.collection("users").document(firebaseUser.uid)
//        
//        let document = try await docRef.getDocument()
//        
//        if let user = try? document.data(as: User.self) {
//            return user
//        } else {
//            let newUser = User(
//                id: firebaseUser.uid,
//                phone: firebaseUser.phoneNumber ?? "",
//                email: firebaseUser.email ?? "",
//                authMethod: authMethod
//            )
//            try docRef.setData(from: newUser)
//            return newUser
//        }
//    }
//    
//    // Обновление данных пользователя
//    func updateUser(_ user: User) async throws {
//        guard let userId = user.id else {
//            throw NSError(domain: "User ID not found", code: 0, userInfo: nil)
//        }
//        
//        let db = Firestore.firestore()
//        let docRef = db.collection("users").document(userId)
//        try docRef.setData(from: user, merge: true)
//        self.currentUser = user
//    }
//}
//
//
//
