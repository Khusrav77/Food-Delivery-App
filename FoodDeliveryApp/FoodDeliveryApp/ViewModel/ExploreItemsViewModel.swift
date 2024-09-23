//
//  ExploreItemsViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import Foundation


final class ExploreItemsViewModel: ObservableObject {
    
    @Published var expItems: ExploreCategory
    @Published var showError = false
    @Published var errorMessage = ""
    @Published var listItems: [Product] = []
    
    
    init(expItems: ExploreCategory) {
        self.expItems = expItems
        
       // serviceCallList()
    }
    
    
    //MARK: - SERVICE CALL
    
//    func serviceCallList() {
//        ServiceCall.post(parameter: ["cat_id": self.expItems.id], path: Globals.SV_EXPLORE_ITEMS_LIST, isToken: true) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    self.listItems = (response.value(forKey: KKey.payload) as? NSArray ?? [])
//                        .map({ list in
//                            return ProductModel(dict: list as? NSDictionary ?? [:])
//                            
//                        })
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
//    }
    
    
}
