//
//  PaymentModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Payment: Identifiable, Equatable {
    var id: Int
    var name: String
    var cardNumber: String
    var cardMonth: String
    var cardYear: String 
    
    static func == (lhs: Payment, rhs: Payment) -> Bool {
        return lhs.id == rhs.id
    }
}
