//
//  ExploreViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation

final class ExploreViewModel: ObservableObject {
    static let shared: ExploreViewModel = ExploreViewModel()
    
    
     @Published var textSearch: String = ""
     
     @Published var showError = false
     @Published var errorMessage = ""
    
     @Published var listProductCategory: [ExploreCategoryModel] = []
    
    
// MARK: - ServiceCall
    
    func serviceCallList() {
        
    }
    
    
    
}
