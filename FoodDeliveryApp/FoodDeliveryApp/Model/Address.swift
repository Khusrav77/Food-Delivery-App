//
//  AddressModal.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Address: Identifiable, Equatable, Codable {
    let id: Int
    let title: String
    let name: String
    let phone: String
    let city: String
    let street: String
    let houseNumber: String
    let apartmentOrOffice: String?
    let entrance: String?
    let floor: String?
    let postalCode: String?
    let comment: String?
    let isSelected: Bool
    
    static func == (lhs: Address, rhs: Address) -> Bool {
        return lhs.id == rhs.id
    }
}
