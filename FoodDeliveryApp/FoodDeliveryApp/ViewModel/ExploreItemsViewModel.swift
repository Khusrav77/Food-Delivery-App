//
//  ExploreItemsViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation


final class ExploreItemsViewModel: ObservableObject {
    
    @Published var expItemsObj: ExploreCategoryModel = ExploreCategoryModel(dict: [:])
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var listProductItem: [ProductModel] = []
    
    
    init(expItemsObj: ExploreCategoryModel) {
        self.expItemsObj = expItemsObj
    }
}
