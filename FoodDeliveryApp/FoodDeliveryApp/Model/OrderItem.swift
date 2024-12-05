//
//  OrderItemModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct OrderItem: Identifiable, Equatable, Codable {
    var id: UUID = UUID()
    let orderId: Int
    let product: Product
    
    static func == (lhs: OrderItem, rhs: OrderItem) -> Bool {
        return lhs.id == rhs.id
    }
}
