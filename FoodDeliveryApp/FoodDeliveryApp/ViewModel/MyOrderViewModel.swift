//
//  MyOrderViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/20/24.
//

import Foundation

class MyOrderViewModel: ObservableObject {
    static var sharred: MyOrderViewModel = MyOrderViewModel()
    
    @Published var showError = false
    @Published var errorMesage = ""
    
    @Published var listMyOrder: [MyOrderModel] = []
    
    
    init() {
        serviceCallList()
    }
    
    // MARK: - SERVICE CALL
    
    func serviceCallList() {
//        ServiceCall.post(parameter: [:], path: Globals.SV_MY_ORDERS_LIST, isToken: true) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    
//                    self.listMyOrder = (response.value(forKey: KKey.payload) as? NSArray ?? []).map({ myOrder in
//                        return MyOrderModel(dict: myOrder as? NSDictionary ?? [:])
//                    })
//                } else {
//                    self.errorMesage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//        } failure: { error in
//            self.errorMesage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }

    }
}
