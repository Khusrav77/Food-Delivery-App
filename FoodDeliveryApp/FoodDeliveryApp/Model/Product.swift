//
//  ProductModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation
import SwiftUI

struct ProductCategory: Identifiable, Codable {
    let id: Int
    let name: String
    let products: [Product]
}

// Полная модель продукта (включает базовую, детальную информацию и акции)
struct Product: Identifiable, Codable {
    let base: ProductBase
    let detail: ProductDetail
    let promotion: Promotion
    let quantityInCart: Int
    
    var id: Int { base.id } // Используем ID из базовой модели
}


// Основная информация о продукте
struct ProductBase: Identifiable, Equatable, Codable {
    let id: Int
    let name: String
    let image: String?
    let price: Price 
    
    static func == (lhs: ProductBase, rhs: ProductBase) -> Bool {
        return lhs.id == rhs.id
    }
}


// Детальная информация о продукте
struct ProductDetail: Identifiable, Equatable, Codable {
    let id: Int
    let prodId: Int
    let typeId: Int
    let typeName: String
    let brandId: Int?
    let brandName: String?
    let detail: String?
    let unitName: Unit
    let unitValue: String
    let nutritionWeight: Nutrition?
    let isFav: Bool
    
    static func == (lhs: ProductDetail, rhs: ProductDetail) -> Bool {
        return lhs.id == rhs.id
    }
}


struct Price: Codable {
    let regularPrice: Double
    let discountedPrice: Double?
    let currency: String
    
    // Вычисляемое свойство для текущей цены
    var currentPrice: Double {
        return discountedPrice ?? regularPrice
    }
}


struct Promotion: Codable {
    let id: Int
    let isPromotional: Bool
    let startDate: Date?
    let endDate: Date?
    
    // Вычисляемое свойство для проверки активности акции
    var isActive: Bool {
        guard let endDate = endDate else { return false }
        return isPromotional && endDate > Date()
    }
}


// Питательная ценность
struct Nutrition: Codable {
    let id: Int
    let calories: Double
    let protein: Double
    let fat: Double
    let carbohydrates: Double
}

// Единица измерения
enum Unit: String, Codable {
    case gram
    case kilogram
    case liter
    case milliliter
    case piece
}



