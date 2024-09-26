//
//  PromoCodeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/25/24.
//

import Foundation


final class PromoCodeViewModel {
    @Published var promoCodes: [PromoCode] = []
    
    @Published var showError = false
    @Published var errorMesage = ""
    
    
    init() {
        fetchPromoCodes()
    }
    
    func fetchPromoCodes() {
        
    }
}
