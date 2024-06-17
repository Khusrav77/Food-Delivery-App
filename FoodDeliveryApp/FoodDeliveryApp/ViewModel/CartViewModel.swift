//
//  CartViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/17/24.
//

import Foundation


final class CartViewModel: ObservableObject {
    
    static var shared: CartViewModel = CartViewModel()
    
    @Published var showError = false
    @Published var showOrderAccept = false
    @Published var errorMessage = ""
    
    @Published var listCartItems: [CartItemModel] = []
    @Published var total: String = ""
    
    @Published var showChekout: Bool = false
    
    @Published var showPickerAddress: Bool = false
    @Published var showPickerPayment: Bool = false
    @Published var showPickerPromoCode: Bool = false
    
    @Published var deliveryType: Int = 1
    @Published var paymentType: Int = 1
    @Published var deliveryObj: AddressModal?
    @Published var paymentObj: PaymentModel?
    @Published var promoObj: PromoCodeModel?
    
    @Published var deliveryPriceAmount: String = ""
    @Published var discountAmount: String = ""
    @Published var userPayment: String = ""
    
    
    init() {
        
    }
    
    
    
    //MARK: - SERVICE CALL
    
    
    
}
