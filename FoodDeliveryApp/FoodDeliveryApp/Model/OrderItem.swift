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
    let prodId: Int
    let typeId: Int
    let typeName: String
    let brandId: Int
    let name: String
    let detail: String?
    let unitName: Unit
    let unitValue: String
    let nutritionWeight: Nutrition?
    let quantityInCart: Int
    let image: String
    let price: Price
    var startDate: Date = Date()
    var endDate: Date = Date()
    
    static func == (lhs: OrderItem, rhs: OrderItem) -> Bool {
        return lhs.id == rhs.id
    }
}
