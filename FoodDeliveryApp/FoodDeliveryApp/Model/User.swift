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
    var phone: String
    var name: String?
    var email: String?
    var authToken: String?
    var googleId: String?
    var appleId: String?
    var vkId: String?
    var createdAt: Date = Date()
    var updatedAt: Date = Date()
    var authMethod: AuthMethod
    
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
