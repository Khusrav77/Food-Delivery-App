//
//  TypeModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation
import SwiftUI

struct TypeModel: Identifiable, Equatable {
    var id: Int
    var name: String
    var image: String
    var color: Color = Color.cardsColor
       
    static func == (lhs: TypeModel, rhs: TypeModel) -> Bool {
        return lhs.id == rhs.id
    }
}
    

