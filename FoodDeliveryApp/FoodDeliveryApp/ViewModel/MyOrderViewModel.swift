//
//  MyOrderViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/20/24.
//

import Foundation

class MyOrderViewModel: ObservableObject {
    // MARK: - Properties
    static var sharred: MyOrderViewModel = MyOrderViewModel()
    @Published var listMyOrder: [MyOrder] = []
    
    @Published var showError = false
    @Published var errorMesage = ""
    
    
    init() {
        serviceCallList()
    }
    
    // MARK: - SERVICE CALL
    func serviceCallList() {

    }
}
