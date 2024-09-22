//
//  PaymentModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct Payment: Identifiable, Equatable {
    
    var id: Int = 0
    var name: String = ""
    var cardNumber: String = ""
    var cardMonth: String = ""
    var cardYear: String = ""
    
    
    init(dict: NSDictionary) {
        self.id = dict.value(forKey: "pay_id") as? Int ?? 0
        self.name = dict.value(forKey: "name") as? String ?? ""
        self.cardNumber = dict.value(forKey: "card_number") as? String ?? ""
        self.cardMonth = dict.value(forKey: "card_month") as? String ?? ""
        self.cardYear = dict.value(forKey: "card_year") as? String ?? ""
    }
    
    static func == (lhs: Payment, rhs: Payment) -> Bool {
        return lhs.id == rhs.id
    }
}