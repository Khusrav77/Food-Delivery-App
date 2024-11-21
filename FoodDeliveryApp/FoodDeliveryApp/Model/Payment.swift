//
//  PaymentModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Payment: Identifiable, Equatable {
    let id: Int
    let name: String
    let cardNumber: String
    let cardMonth: String
    let cardYear: String 
    
    static func == (lhs: Payment, rhs: Payment) -> Bool {
        return lhs.id == rhs.id
    }
}
