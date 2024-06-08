//
//  UserModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/2/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift


struct UserModel: Identifiable, Equatable, Codable {
    @DocumentID  var id: String? = ""
    var phoneNumber: String = ""
    var name: String? = ""
    var email: String? = ""
    
    enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case phoneNumber = "phone_number"
        case name
        case email
        
        
    }
    
    static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.id == rhs.id
    }
}
