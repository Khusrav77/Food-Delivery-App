//
//  ProductDetailViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

final class ProductViewModel: ObservableObject {
    // MARK: - Properties
    
    @Published var producList: [Product] = []
    @Published var nutritions: [Nutrition] = []
    @Published var images: [ImageModel] = []
    
    @Published var quantity: Int = 1
    @Published var errorMessage: String = ""
    
    @Published var showError: Bool = false
    @Published var isFav: Bool = false
    @Published var isShowDetail: Bool = false
    @Published var isShowNutrition: Bool = false
    
    
    
    // MARK: - Methods
    func showDetail() {
        isShowDetail.toggle()
    }
    
    func showNutrition() {
        isShowNutrition.toggle()
    }
    
    func adjustQuantity(isIncrease: Bool = true) {
        quantity = isIncrease ? min(quantity + 1, 99) : max(quantity - 1, 1)
    }

    
    
    
    //MARK: - Service call
    func serviceCallDetail() {

    }
    
    func serviceCallAddRemoveFav() {
        
    }
}

