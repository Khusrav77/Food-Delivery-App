//
//  MyOrderViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/20/24.
//

import Foundation

class OrderViewModel: ObservableObject {
    // MARK: - Properties
    static var sharred: OrderViewModel = OrderViewModel()
    @Published var listMyOrders: [MyOrder] = []
    @Published var listOrderItems: [OrderItem] = []
    
    @Published var showError = false
    @Published var errorMesage = ""
    
    
    init() {
        serviceCallList()
    }
    
    // MARK: - SERVICE CALL
    func serviceCallList() {

    }
}
