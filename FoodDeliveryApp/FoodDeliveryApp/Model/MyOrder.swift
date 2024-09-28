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
    var deliverType: DeliveryType
    var paymentType: PaymentType
    var paymentStatus: OrderStatus
    var orderStatus: OrderStatus
    var status: OrderStatus
    var names: String
    var address: Address
    var images: [String] = []
    var createdDate: Date = Date()
}


enum DeliveryType: Int, Codable {
    case pickup = 0
    case delivery = 1
}

enum PaymentType: Int, Codable {
    case cash = 0
    case card = 1
    case online = 2
}

enum OrderStatus: Int, Codable {
    case pending = 0
    case confirmed = 1
    case delivered = 2
    case canceled = 3
}
