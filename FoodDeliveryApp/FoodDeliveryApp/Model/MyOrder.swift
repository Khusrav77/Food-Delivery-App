//
//  MyOrderModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct MyOrder: Identifiable, Equatable {
    var id: Int
    var cartId: Int
    var totalPrice: Int
    var userPayPrice: Int?
    var discountPrice: Int?
    var deliverPrice: Int?
    var deliverType: Int
    var paymentType: Int
    var paymentStatus: Int
    var orderStatus: Int
    var status: Int
    var names: String
    var userName: String
    var phone: String
    var address: String
    var city: String
    var state: String
    var postalCode: String
    var images: [String] = []
    var createdDate: Date = Date()
       
    static func == (lhs: MyOrder, rhs: MyOrder) -> Bool {
           return lhs.id == rhs.id
       }
}
