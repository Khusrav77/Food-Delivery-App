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
    
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    
    
    init() {}
    
    
    // MARK: - SERVICE CALL
    func serviceCallList() {

    }
}
