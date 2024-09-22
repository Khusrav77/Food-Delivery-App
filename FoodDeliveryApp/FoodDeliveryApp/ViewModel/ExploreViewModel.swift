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
    
    @Published var listCategory: [ExploreCategory] = []
    
    
    init () {
        serviceCallList()
    }
    
    
    // MARK: - ServiceCall
    
    func serviceCallList() {
//        ServiceCall.post(parameter: [:], path: Globals.SV_EXPLORE_LIST, isToken: true) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    self.listCategory = (response.value(forKey: KKey.payload) as? NSArray ?? []).map({list in
//                        return ExploreCategoryModel(dict: list as? NSDictionary ?? [:])
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
