//
//  FavoriteViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

final class FavoriteViewModel: ObservableObject {
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var favorites: [Product] = []
    
    
    init() {
        
        
    }
    
    
    // MARK: - SERVICE CALL
    
    func serviceCallList() {
//        ServiceCall.post(parameter: [:], path: Globals.SV_FAVORITE_LIST, isToken: true) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    
//                    self.listFavorites = (response.value(forKey: KKey.payload) as? NSArray ?? []).map({ list in
//                        return ProductModel(dict: list as? NSDictionary ?? [:])
//                    })
//                } else {
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//        } failure: { error in
//            self.errorMessage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }

    }
}
