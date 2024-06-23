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
        serviceCallList()
    }
    
    
    
    //MARK: - SERVICE CALL
    
    func serviceCallList() {
        ServiceCall.post(parameter: ["promo_code_id": promoObj?.id ?? "", "delivery_type": deliveryType], path: Globals.SV_CART_LIST, isToken: true) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    
                    self.total = response.value(forKey: "total") as? String ?? "0"
                    self.discountAmount = response.value(forKey: "discount_amount") as? String ?? "0"
                    self.deliveryPriceAmount = response.value(forKey: "delivery_price_amount") as? String ?? "0"
                    self.userPayment = response.value(forKey: "user_pay_price") as? String ?? "0"
                    
                    self.listCartItems = (response.value(forKey: KKey.payload) as? NSArray ?? []).map({ item in
                        return CartItemModel(dict: item as? NSDictionary ?? [:])
                    })
                    
                } else {
                    self.total = response.value(forKey: "total") as? String ?? "0"
                    self.discountAmount = response.value(forKey: "discount_amount") as? String ?? "0"
                    self.deliveryPriceAmount = response.value(forKey: "delivery_price_amount") as? String ?? "0"
                    self.userPayment = response.value(forKey: "user_pay_price") as? String ?? "0"
                    
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessage = error?.localizedDescription ?? "Fail"
            self.showError = true
        }

    }
    
    func serviceCallUpdateQty(item: CartItemModel, newQty: Int) {
        ServiceCall.post(parameter: ["cart_id": item.cartId, "prod_id": item.prodId, "new_qty": newQty], path: Globals.SV_UPDATE_CART, isToken: true) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    
                    self.serviceCallList()
                    
                } else {
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessage = error?.localizedDescription ?? "Fail"
            self.showError = true
        }

    }
    
    func serviceCallRemove(item: CartItemModel) {
        ServiceCall.post(parameter: ["cart_id": item.cartId, "prod_id": item.prodId], path: Globals.SV_REMOVE_CART, isToken: true) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    
                    self.serviceCallList()
                    
                } else {
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessage = error?.localizedDescription ?? "Fail"
            self.showError = true
        }

    }
    
    func serviceCallOrderPlac() {
        if (deliveryType == 1 && deliveryObj == nil) {
            self.errorMessage = "Please select delivery address"
            self.showError = true
            return
        }
        
        if (paymentType == 2 && paymentObj == nil) {
            self.errorMessage = "Please select payment method"
            self.showError = true
            return
        }
        
        ServiceCall.post(parameter: ["address_id": deliveryType == 2 ? "" : "\(deliveryObj?.id ?? 0)",
                                     "delivery_type": deliveryType,
                                     "payment_type": paymentType,
                                     "pay_id": paymentType == 1 ? "" : "\(paymentObj?.id ?? 0)",
                                     "promo_code_id": promoObj?.id ?? ""
                                    ],
                         path: Globals.SV_ORDER_PLACE, isToken: true) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    
                    self.deliveryObj = nil
                    self.paymentObj = nil
                    self.promoObj = nil
                    self.showChekout = false
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Success"
                    self.showError = true
                    self.serviceCallList()
                    
                    self.showOrderAccept = true
                    
                } else {
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessage = error?.localizedDescription ?? "Fail"
            self.showError = true
        }

    }
    
    class func serviceCallAddToCart(prodId: Int, qty: Int, didDone:((_ isDone: Bool, _ message: String) -> ())?) {
        ServiceCall.post(parameter: ["prod_id": prodId, "qty": qty], path: Globals.SV_ADD_TO_CART, isToken: true) { responseObj in
            
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    didDone?(true, response.value(forKey: KKey.message) as? String ?? "Done")
                    
                } else {
                    didDone?(false, response.value(forKey: KKey.message) as? String ?? "Fail")
                }
            }
        } failure: { error in
            didDone?(false, error?.localizedDescription ?? "Fail")
        }

    }
    
}
