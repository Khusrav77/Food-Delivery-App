//
//  PromoCodeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/25/24.
//

import Foundation


final class PromoCodeViewModel: ObservableObject {
    
    @Published var promoCodes: [PromoCode] = []
    @Published var errorMesage: String = ""
    @Published var showError: Bool = false
    
    
    init() {
        fetchPromoCodes()
    }
    
    func fetchPromoCodes() {
        
    }
}
