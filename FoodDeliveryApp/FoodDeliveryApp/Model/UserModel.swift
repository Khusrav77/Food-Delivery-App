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
    var authToken: String? = ""
    
    enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case phoneNumber = "phone_number"
        case name
        case email
        case authToken = "auth_token"
        
    }
    
    init(dict: NSDictionary) {
        self.id = dict.value(forKey: "user_id") as? String ?? ""
        self.phoneNumber = dict.value(forKey: "mobile") as? String ?? ""
        self.name = dict.value(forKey: "name") as? String ?? ""
        self.email = dict.value(forKey: "email") as? String ?? ""
        self.authToken = dict.value(forKey: "auth_token") as? String ?? ""
    }
    
    
    static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.id == rhs.id
    }
}
