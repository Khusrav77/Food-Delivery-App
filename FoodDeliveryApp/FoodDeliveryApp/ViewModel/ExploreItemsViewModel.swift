//
//  ExploreItemsViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation


final class ExploreItemsViewModel: ObservableObject {
    // MARK: - Properties
    @Published var expItems: ExploreCategory
    @Published var showError = false
    @Published var errorMessage = ""
    @Published var listItems: [Product] = []
    
    
    init(expItems: ExploreCategory) {
        self.expItems = expItems
        
        serviceCallList()
    }
    
    
    // MARK: - SERVICE CALL
    func serviceCallList() {

    }
    
}
