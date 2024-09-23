//
//  OrderItemModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/11/24.
//

import Foundation


struct OrderItem: Identifiable, Equatable, Codable {
    var id: UUID = UUID()
    var prodId: Int
    var catId: Int
    var brandId: Int
    var typeId: Int
    var orderId: Int
    var quantityiInCart: Int
    var detail: String
    var name: String
    var unitName: String
    var unitValue: String
    var nutritionWeight: String
    var image: String
    var catName: String
    var typeName: String
    var offerPrice: Int?
    var itemPrice: Int
    var totalPrice: Int
    var price: Int
    var startDate: Date = Date()
    var endDate: Date = Date()
    var isFav: Bool = false
      
      
    static func == (lhs: OrderItem, rhs: OrderItem) -> Bool {
          return lhs.id == rhs.id
    }
    
}
