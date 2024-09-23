//
//  ProductModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation


struct Product: Identifiable, Equatable, Codable{
    var id: Int
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
    var offerPrice: Int
    var itemPrice: Int
    var totalPrice: Int
    var price: Int
    var startDate: Date = Date()
    var endDate: Date = Date()
    var isFav: Bool = false
        
    static func == (lhs: Product, rhs: Product) -> Bool {
            return lhs.id == rhs.id
        }
}

    


