//
//  MyOrderDetailViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/20/24.
//

import Foundation


class MyOrderDetailViewModel: ObservableObject {
    @Published var myOrderModel: MyOrder
    @Published var showError = false
    @Published var errorMesage = ""
    @Published var listOrderItem: [OrderItem] = []
    
    
    init(orderModel: MyOrder) {
        self.myOrderModel = orderModel
        
    }
    
    // MARK: - SERVICE CALL
    
    func serviceCallDetail() {
//        ServiceCall.post(parameter: ["order_id": self.myOrderModel.id], path: Globals.SV_MY_ORDERS_DETAIL, isToken: true) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    
//                    if let payload = response.value(forKey: KKey.payload) as? NSDictionary {
//                        self.myOrderModel = MyOrderModel(dict: payload)
//                        self.listOrderItem = (payload.value(forKey: "cart_list") as? NSArray ?? []).map({ orderItem in
//                            
//                            print(orderItem)
//                            return OrderItemModel(dict: orderItem as? NSDictionary ?? [:])
//                        })
//                    }
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
