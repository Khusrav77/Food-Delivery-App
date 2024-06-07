//
//  AuthService.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/6/24.
//

import Foundation
import Combine
import Firebase
import FirebaseStorage

final class AuthService {
    static var shared = AuthService()
    
    
    private init() {}
    
    
        // Отправка кода подтверждения
        func sendVerificationCode(phoneNumber: String) -> AnyPublisher<Void, Error> {
            Future { promise in
                PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
                    if let error = error {
                        promise(.failure(error))
                        return
                    }
                    UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
                    promise(.success(()))
                }
            }.eraseToAnyPublisher()
        }
        
        // Проверка кода и вход
        func verifyCode(verificationCode: String) -> AnyPublisher<UserModel, Error> {
            Future { promise in
                guard let verificationID = UserDefaults.standard.string(forKey: "authVerificationID") else {
                    promise(.failure(NSError(domain: "Verification ID not found", code: 0, userInfo: nil)))
                    return
                }
                
                let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationID, verificationCode: verificationCode)
                Auth.auth().signIn(with: credential) { authResult, error in
                    if let error = error {
                        promise(.failure(error))
                        return
                    }
                    guard let firebaseUser = authResult?.user else {
                        promise(.failure(NSError(domain: "No authenticated user", code: 0, userInfo: nil)))
                        return
                    }
                    
                    self.fetchOrCreateUser(firebaseUser: firebaseUser) { result in
                        switch result {
                        case .success(let userModel):
                            promise(.success(userModel))
                        case .failure(let error):
                            promise(.failure(error))
                        }
                    }
                }
            }.eraseToAnyPublisher()
        }
        
        // Получение или создание нового пользователя
        private func fetchOrCreateUser(firebaseUser: User, completion: @escaping (Result<UserModel, Error>) -> Void) {
            let db = Firestore.firestore()
            let docRef = db.collection("users").document(firebaseUser.uid)
            
            docRef.getDocument { document, error in
                if let document = document, document.exists {
                    do {
                        if let user = try document.data(as: UserModel.self) {
                            completion(.success(user))
                        } else {
                            completion(.failure(NSError(domain: "Failed to parse user data", code: 0, userInfo: nil)))
                        }
                    } catch {
                        completion(.failure(error))
                    }
                } else {
                    // Пользователь не существует, создать нового пользователя
                    let newUser = UserModel(id: firebaseUser.uid, phoneNumber: firebaseUser.phoneNumber ?? "")
                    do {
                        try docRef.setData(from: newUser)
                        completion(.success(newUser))
                    } catch {
                        completion(.failure(error))
                    }
                }
            }
        }
}
