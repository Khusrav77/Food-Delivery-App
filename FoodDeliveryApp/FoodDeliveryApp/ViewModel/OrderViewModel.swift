//
//  MyOrderViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/20/24.
//

import Foundation

final class OrderViewModel: ObservableObject {
    // MARK: - Properties
    @Published var listMyOrders: [MyOrder] = []
    @Published var listOrderItems: [OrderItem] = []
    
    @Published var errorMesage: String = ""
    @Published var showError: Bool = false
    
    
    init() {
        serviceCallList()
    }
    
    // MARK: - SERVICE CALL
    func serviceCallList() {

    }
}
