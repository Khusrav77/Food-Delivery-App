//
//  FavoriteViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

final class FavoriteViewModel: ObservableObject {
    // MARK: - Properties
    @Published var favorites: [Product] = []
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    
    init() {}
    
    
    // MARK: - SERVICE CALL
    func serviceCallList() {

    }
}
