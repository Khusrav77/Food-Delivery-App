//
//  MyOrderDetailViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/20/24.
//

import Foundation


final class MyOrderDetailViewModel: ObservableObject {
    // MARK: - Properties
    @Published var myOrderModel: MyOrder
    @Published var listOrderItem: [OrderItem] = []
    
    @Published var showError = false
    @Published var errorMesage = ""
    
    
    init(orderModel: MyOrder) {
        self.myOrderModel = orderModel
    }
    
    // MARK: - SERVICE CALL
    func serviceCallDetail() {

    }
}
