//
//  ProductDetailViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

final class ProductDetailViewModel: ObservableObject {
    
    @Published var prodObj: ProductModel = ProductModel(from:)
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var nutritionArray: [NutritionModel] = []
    @Published var imageArray: [ImageModel] = []
    
    @Published var isFav: Bool = false
    @Published var isShowDetail: Bool = false
    @Published var isShowNutrition: Bool = false
    @Published var quantity: Int = 1
    
   
    func showDetail() {
        isShowDetail.toggle()
    }
    
    func showNutrition() {
        isShowNutrition.toggle()
    }
    
    func adjustQuantity(isIncrease: Bool = true) {
        quantity = isIncrease ? min(quantity + 1, 99) : max(quantity - 1, 1)
    }

    
    
    init(prodObj: ProductModel) {
        self.prodObj = prodObj
        self.isFav = prodObj.isFav
    }
    
    
    
    //MARK: Service call
    
    
    
}

