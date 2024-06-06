//
//  UserModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/2/24.
//

import Foundation


struct UserModel: Identifiable, Equatable, Decodable {
    var id: Int
    var phoneNumber: String
    var verificationCode: String
    var authToken: String
    var name: String?
    var email: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case phoneNumber = "phone_number"
        case verificationCode = "verification_code"
        case authToken = "auth_token"
        case name
        case email
    }
    
    static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.id == rhs.id
    }
}
