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
    var phoneNumber: String
    var name: String?
    var email: String?
    var authToken: String?

        
    
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id
    }
}
