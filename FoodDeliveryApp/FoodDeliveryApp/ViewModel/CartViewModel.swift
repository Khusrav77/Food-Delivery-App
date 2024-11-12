//
//  CartViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/17/24.
//

import Foundation


final class CartViewModel: ObservableObject {
    // MARK: - Properties
    static let shared: CartViewModel = CartViewModel()
    
    @Published var cartItems: [CartItem] = []
    
    @Published var deliveryAddress: Address?
    @Published var paymentMethod: Payment?
    @Published var promoCode: PromoCode?
    
    @Published var deliveryType: Int = 1
    @Published var paymentType: Int = 1
    @Published var deliveryPriceAmount: String = ""
    @Published var discountAmount: String = ""
    @Published var userPayment: String = ""
    @Published var total: String = ""
    
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    
    @Published var showOrderAccept: Bool = false
    @Published var showChekout: Bool = false
    @Published var showAddressPicker: Bool = false
    @Published var showPaymentPicker: Bool = false
    @Published var showPromoCodePicker: Bool = false
    
    
    
    
    init() {}
    
    
    func addToCart(product: Product) {
        
    }
}
