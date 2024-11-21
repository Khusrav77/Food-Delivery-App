//
//  MyOrderModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct MyOrder: Identifiable, Equatable {
    let id: Int
    let cartId: Int
    let totalPrice: Int
    let userPayPrice: Int?
    let discountPrice: Int?
    let deliverPrice: Int?
    let deliverType: DeliveryType
    let paymentType: PaymentType
    let paymentStatus: OrderStatus
    let orderStatus: OrderStatus
    let status: OrderStatus
    let names: String
    let address: Address
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
