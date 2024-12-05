//
//  UserModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/2/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift


// Базовая модель данных пользователя
struct UserBase: Identifiable, Equatable, Codable {
    @DocumentID var id: String?
    let phone: String
    let name: String?
    let email: String?
    let authMethod: AuthMethod
}

// Полная модель данных пользователя
struct UserFull: Identifiable, Equatable, Codable {
    @DocumentID var id: String?
    let base: UserBase // Включаем базовую модель
    let authToken: String?
    var createdAt: Date = Date()
    var updatedAt: Date = Date()

    mutating func updateTimestamp() {
        self.updatedAt = Date()
    }
}

// Методы аутентификации
enum AuthMethod: String, Codable {
    case phone
    case email
    case google
    case apple
    case vk
}
