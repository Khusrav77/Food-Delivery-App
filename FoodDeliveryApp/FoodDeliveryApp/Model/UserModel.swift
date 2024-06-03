//
//  UserModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/2/24.
//

import Foundation


struct UserModel: Identifiable, Equatable {
    var id: Int
    var phoneNumber: String
    var mobileCode: String
    var authToken: String
    var name: String?
    var email: String?
    
    init(dictionary: NSDictionary) {
        self.id = dictionary.value(forKey: "user_id") as? Int ?? 0
        self.phoneNumber = dictionary.value(forKey: "phonenumber") as? String ?? ""
        self.mobileCode = dictionary.value(forKey: "mobile_code") as? String ?? ""
        self.authToken = dictionary.value(forKey: "auth_token") as? String ?? ""
        self.name = dictionary.value(forKey: "name") as? String ?? ""
        self.email = dictionary.value(forKey: "email") as? String ?? ""
    }
    
    static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.id == rhs.id
    }
}
