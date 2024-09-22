//
//  CartViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/17/24.
//

import Foundation


final class CartViewModel: ObservableObject {
    
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
    
    
    init() {
        
    }
    
    
//    func addToCart(product: Product) {
//        updateItem(product, data: ["quantityinCart" : 1])
//    }
//    
//    func removeFromCart(product: Product) {
//        updateItem(product, data: ["quantityinCart" : 0])
//    }
//    
//    func increaseQuantity(product: Product) {
//        let newQuantity = (product.quantityinCart ?? 0) + 1
//        updateItem(product, data: ["quantityinCart" : newQuantity])
//    }
//    
//    func decreaseQuantityZero(product:Product) {
//        let currentQuantity = product.quantityinCart ?? 0
//        let newQuantity = max(currentQuantity - 1, 0)
//        updateItem(product, data: ["quantityinCart" : newQuantity])
//    }
//    
//    func decreaseQuantity(product:Product) {
//        let currentQuantity = product.quantityinCart ?? 0
//        let newQuantity = max(currentQuantity - 1, 1)
//        updateItem(product, data: ["quantityinCart" : newQuantity])
//    }
//    
//    private func updateItem(_ product: Product, data: [String: Any]) {
//        guard let id = product.id else {return}
//       
//    }
}
