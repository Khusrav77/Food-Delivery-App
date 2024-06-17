//
//  FavoriteViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

final class FavoriteViewModel: ObservableObject {
    static let shared: FavoriteViewModel = FavoriteViewModel()
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var listFavoriteProduct: [ProductModel] = []
}
