//
//  ProductDetailViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

final class ProductDetailViewModel: ObservableObject {
    
    @Published var products: Product = Product(dict: [:])
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var nutritions: [Nutrition] = []
    @Published var images: [ImageModel] = []
    
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

    
    
    init(products: Product) {
        self.products = products
        self.isFav = products.isFav
        
        serviceCallDetail()
    }
    
    
    
    //MARK: Service call
    
    func serviceCallDetail() {
//        ServiceCall.post(parameter: ["prod_id": self.products.prodId], path: Globals.SV_PRODUCT_DETAIL, isToken: true) { responseObj in
//            
//            if let response = responseObj as? NSDictionary {
//                
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    
//                    if let payload = response.value(forKey: KKey.payload) as? NSDictionary {
//                        
//                        self.products = ProductModel(dict: payload)
//                        self.nutritions = (payload.value(forKey: "nutrition_list") as? NSArray ?? []).map({ nutrition in
//                            return NutritionModel(dict: nutrition as? NSDictionary ?? [:])
//                        })
//                        
//                        self.images = (payload.value(forKey: "images") as? NSArray ?? []).map({ image in
//                            return ImageModel(dict: image as? NSDictionary ?? [:])
//                        })
//                    }
//                } else {
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//        } failure: { error in
//            self .errorMessage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }

    }
    
    func serviceCallAddRemoveFav() {
//        ServiceCall.post(parameter: ["prod_id": self.products.prodId], path: Globals.SV_ADD_REMOVE_FAVORITE, isToken: true) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    
//                    self.isFav = self.isFav
//                    HomeViewModel.shared.serviceCallList()
//                    
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Done"
//                    self.showError = true
//                } else {
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//        } failure: { error in
//            self.errorMessage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }
//
   }
    
}

