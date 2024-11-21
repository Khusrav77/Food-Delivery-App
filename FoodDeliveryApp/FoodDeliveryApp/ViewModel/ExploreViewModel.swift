//
//  ExploreViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation
import SwiftUICore


final class ExploreViewModel: ObservableObject {
    // MARK: - Properties
    @Published var listItems: [Product] = []
    
    @Published var searchItems: String = ""
    @Published var searchCategory: String = ""
    
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    
    @Published var listCategories: [TypeCategory] = [
        TypeCategory(id: 1, name: "Fruits", image: "fruits", color: nil),
               TypeCategory(id: 2, name: "Berries", image: "berries", color: Color.pink),
               TypeCategory(id: 3, name: "Vegetables", image: "vegetables", color: Color.green),
               TypeCategory(id: 4, name: "Meat", image: "meat", color: Color.red),
               TypeCategory(id: 5, name: "Fish", image: "fish", color: Color.blue),
               TypeCategory(id: 6, name: "Dairy", image: "dairy", color: Color.white),
               TypeCategory(id: 7, name: "Groceries", image: "groceries", color: Color.orange),
               TypeCategory(id: 8, name: "For Kids", image: "forKids", color: Color.yellow),
               TypeCategory(id: 9, name: "Sweets", image: "sweets", color: Color.purple),
               TypeCategory(id: 10, name: "Dried Fruits", image: "driedFruits", color: Color.brown),
               TypeCategory(id: 11, name: "Ready Food", image: "readyFood", color: Color.orange),
               TypeCategory(id: 12, name: "Frozen", image: "froze", color: Color.cyan),
            TypeCategory(id: 13, name: "For Home", image: "foHome", color: nil)
           ]
    
    
    
    
    init () {
        serviceCallList()
    }
    
    
    // MARK: - ServiceCall
    func serviceCallList() {

    }
    
}
