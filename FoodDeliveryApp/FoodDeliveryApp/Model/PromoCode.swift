//
//  PromoCodeModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct PromoCode: Identifiable, Equatable {
    let id: Int
    let type: Int
    let title: String
    let code: String
    let details: String
    var startDate: Date = Date()
    var endDate: Date = Date()
    let minOrderAmount: Int
    let maxDiscountAmount: Int
    let offerPrice: Int
    
    static func == (lhs: PromoCode, rhs: PromoCode) -> Bool {
        return lhs.id == rhs.id
    }
}
