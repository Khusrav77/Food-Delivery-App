//
//  AddressModal.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Address: Identifiable, Equatable, Codable {
    var id: Int
    var title: String
    var name: String
    var phone: String
    var city: String
    var street: String
    var houseNumber: String
    var apartmentOrOffice: String?
    var entrance: String?
    var floor: String?
    var postalCode: String?
    var comment: String?
    var isSelected: Bool = false
    
    static func == (lhs: Address, rhs: Address) -> Bool {
        return lhs.id == rhs.id
    }
}
