//
//  AddressModal.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Address: Identifiable, Equatable, Codable {
    var id: Int
    var name: String
    var phone: String
    var address: String
    var city: String
    var state: String
    var typeName: String
    var postalCode: String
    var isDefault: Int
    
    static func == (lhs: Address, rhs: Address) -> Bool {
        return lhs.id == rhs.id
    }
}
