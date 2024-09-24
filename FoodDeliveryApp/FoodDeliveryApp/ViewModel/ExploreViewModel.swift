//
//  ExploreViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation

final class ExploreViewModel: ObservableObject {
    // MARK: - Properties
    static let shared: ExploreViewModel = ExploreViewModel()
    
    @Published var listCategory: [ExploreCategory] = []
    @Published var textSearch: String = ""
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    
    
    
    init () {
        serviceCallList()
    }
    
    
    // MARK: - ServiceCall
    func serviceCallList() {

    }
    
}
