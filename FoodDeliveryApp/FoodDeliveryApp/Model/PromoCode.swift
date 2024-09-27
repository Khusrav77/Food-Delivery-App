//
//  PromoCodeModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct PromoCode: Identifiable, Equatable {
    var id: Int
    var type: Int
    var title: String
    var code: String
    var details: String
    var startDate: Date = Date()
    var endDate: Date = Date()
    var minOrderAmount: Int
    var maxDiscountAmount: Int
    var offerPrice: Int
    
    static func == (lhs: PromoCode, rhs: PromoCode) -> Bool {
        return lhs.id == rhs.id
    }
}
