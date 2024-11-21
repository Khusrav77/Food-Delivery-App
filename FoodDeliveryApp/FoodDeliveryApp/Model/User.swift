//
//  UserModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/2/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift


struct User: Identifiable, Equatable, Codable {
    @DocumentID  var id: String?
    let phone: String
    let name: String?
    let email: String?
    let authToken: String?
    let googleId: String?
    let appleId: String?
    let vkId: String?
    var createdAt: Date = Date()
    var updatedAt: Date = Date()
    let authMethod: AuthMethod
    
    mutating func updateTimestamp() {
           self.updatedAt = Date()
       }
}

enum AuthMethod: String, Codable {
    case phone
    case email
    case google
    case apple
    case vk
}
