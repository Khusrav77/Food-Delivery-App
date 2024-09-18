//
//  HomeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    
    static var shared: HomeViewModel = HomeViewModel()
   
    @Published var tabSelection: Int = 4
    @Published var textSearch: String = ""
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var offerList: [ProductModel] = []
    @Published var bestLisr: [ProductModel] = []
    @Published var listProduc: [ProductModel] = []
    @Published var typeList: [TypeModel] = []
    
    
    init() {
        serviceCallList()
    }
    
    
    
    //MARK: - Service call
    
    func serviceCallList() {
//        ServiceCall.post(parameter: [:], path: Globals.SV_HOME, isToken: true) { responseObj in
//           
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    if let payload = response.value(forKey: KKey.payload) as? NSDictionary {
//                        self.offerList = (payload.value(forKey: "offer_list") as? NSArray ?? []).map({ item in
//                            return ProductModel(dict: item as? NSDictionary ?? [:])
//                        })
//                        
//                        self.bestLisr = (payload.value(forKey: "best_sell_list") as? NSArray ?? []).map({ item in
//                            return ProductModel(dict: item as? NSDictionary ?? [:])
//                        })
//                        
//                        self.listProduc = (payload.value(forKey: "list") as? NSArray ?? []).map({ item in
//                            return ProductModel(dict: item as? NSDictionary ?? [:])
//                        })
//                        
//                        self.typeList = (payload.value(forKey: "type_list") as? NSArray ?? []).map({ item in
//                            return TypeModel(dict: item as? NSDictionary ?? [:])
//                        })
//                    }
//                } else {
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//                
//        } failure: { error in
//            self.errorMessage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }

    }
}

