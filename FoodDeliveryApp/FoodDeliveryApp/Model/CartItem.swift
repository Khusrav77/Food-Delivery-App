//
//  SwiftUIView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import Foundation



struct CartItem: Identifiable, Codable {
    var id: UUID = UUID()
    let cartId: Int
    let userId: Int
    let product: Product
       
    static func == (lhs: CartItem, rhs: CartItem) -> Bool {
            return lhs.id == rhs.id
        }
}

    


