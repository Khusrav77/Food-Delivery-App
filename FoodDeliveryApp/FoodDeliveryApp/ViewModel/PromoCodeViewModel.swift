//
//  PromoCodeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/25/24.
//

import Foundation


final class PromoCodeViewModel: ObservableObject {
    // MARK: - Properties
    @Published var promoCodes: [PromoCode] = []
    @Published var errorMesage: String = ""
    @Published var showError: Bool = false
    
    
    init() {
        
    }
    
    func fetchPromoCodes() {
        
    }
}
