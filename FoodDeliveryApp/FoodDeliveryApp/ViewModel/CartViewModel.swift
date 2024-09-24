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
    
    @Published var showError = false
    @Published var showOrderAccept = false
    @Published var errorMessage = ""
    
    @Published var cartItems: [CartItem] = []
    @Published var total: String = ""
    
    @Published var showChekout: Bool = false
    @Published var showAddressPicker: Bool = false
    @Published var showPaymentPicker: Bool = false
    @Published var showPromoCodePicker: Bool = false
    
    @Published var deliveryType: Int = 1
    @Published var paymentType: Int = 1
    @Published var deliveryAddress: Address?
    @Published var paymentMethod: Payment?
    @Published var promoCode: PromoCode?
    
    @Published var deliveryPriceAmount: String = ""
    @Published var discountAmount: String = ""
    @Published var userPayment: String = ""
    
    
    init() {}
    
    
    func addToCart(product: Product) {
        
    }
}
