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
    
    @Published var listCartItems: [CartItemModel] = []
    @Published var total: String = ""
    
    @Published var showChekout: Bool = false
    
    @Published var showAddressPicker: Bool = false
    @Published var showPaymentPicker: Bool = false
    @Published var showPromoCodePicker: Bool = false
    
    @Published var deliveryType: Int = 1
    @Published var paymentType: Int = 1
    @Published var deliveryAddress: AddressModal?
    @Published var paymentMethod: PaymentModel?
    @Published var promoCode: PromoCodeModel?
    
    @Published var deliveryPriceAmount: String = ""
    @Published var discountAmount: String = ""
    @Published var userPayment: String = ""
    
    
    init() {
       
    }
    
    
    private func performServiceCall(with parameters: [String: Any], path: String, completion: @escaping (NSDictionary?) -> Void, failure: @escaping (Error?) -> Void) {
//        ServiceCall.post(parameter: parameters as NSDictionary, path: path, isToken: true){
//            responseobj in
//            completion(responseobj as? NSDictionary)
//        } failure: { error in
//            failure (error)
//        }
    }
}
