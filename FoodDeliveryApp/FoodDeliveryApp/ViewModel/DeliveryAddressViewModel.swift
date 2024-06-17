//
//  DeliveryAddressViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/17/24.
//

import Foundation


final class DeliveryAddressViewModel: ObservableObject {
    static var shared: DeliveryAddressViewModel = DeliveryAddressViewModel()
    
    @Published var txtName: String = ""
    @Published var txtMobile: String = ""
    @Published var txtAddress: String = ""
    @Published var txtCity: String = ""
    @Published var txtState: String = ""
    @Published var txtPostalCode: String = ""
    @Published var txtTypeName: String = "Home"
    
    @Published var showError = false
    @Published var errorMessage = ""
    @Published var isLoading = false
    
    @Published var listAddress: [AddressModal] = []
    
    init() {
           serviceCallList()
       }
       
    func clearAll() {
        txtName = ""
        txtMobile = ""
        txtAddress = ""
        txtCity = ""
        txtState = ""
        txtPostalCode = ""
        txtTypeName = "Home"
    }
       
    func setData(address: AddressModal) {
        txtName = address.name
        txtMobile = address.phone
        txtAddress = address.address
        txtCity = address.city
        txtState = address.state
        txtPostalCode = address.postalCode
        txtTypeName = address.typeName
    }
       
       // MARK: - SERVICE CALL
       
       func serviceCallList() {
           isLoading = true
           ProductServiceCall.post(parameter: [:], path: Globals.SV_ADDRESS_LIST, isToken: true) { responseObj in
               self.isLoading = false
               if let response = responseObj as? NSDictionary {
                   if response.value(forKey: KKey.status) as? String == "1" {
                       self.listAddress = (response.value(forKey: KKey.payload) as? NSArray ?? []).map { address in
                           AddressModal(dict: address as? NSDictionary ?? [:])
                       }
                   } else {
                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                       self.showError = true
                   }
               }
           } failure: { error in
               self.isLoading = false
               self.errorMessage = error?.localizedDescription ?? "Fail"
               self.showError = true
           }
       }
       
       func serviceCallRemove(address: AddressModal) {
           isLoading = true
           ProductServiceCall.post(parameter: ["address_id": address.id], path: Globals.SV_REMOVE_ADDRESS, isToken: true) { responseObj in
               self.isLoading = false
               
               if let response = responseObj as? NSDictionary {
                   if response.value(forKey: KKey.status) as? String == "1" {
                       self.serviceCallList()
                       
                   } else {
                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                       self.showError = true
                   }
               }
           } failure: { error in
               self.isLoading = false
               self.errorMessage = error?.localizedDescription ?? "Fail"
               self.showError = true
           }
       }
       
       func serviceCallUpdateAddress(address: AddressModal?, didDone: (() -> ())?) {
           isLoading = true
           ProductServiceCall.post(parameter: [
               "address_id": address?.id ?? "",
               "name": txtName,
               "type_name": txtTypeName,
               "phone": txtMobile,
               "address": txtAddress,
               "city": txtCity,
               "state": txtState,
               "postal_code": txtPostalCode
           ], path: Globals.SV_UPDATE_ADDRESS, isToken: true) { responseObj in
               self.isLoading = false
               
               if let response = responseObj as? NSDictionary {
                   if response.value(forKey: KKey.status) as? String == "1" {
                       self.clearAll()
                       self.serviceCallList()
                       didDone?()
                       
                   } else {
                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                       self.showError = true
                   }
               }
           } failure: { error in
               self.isLoading = false
               self.errorMessage = error?.localizedDescription ?? "Fail"
               self.showError = true
           }
       }
       
       func serviceCallAddAddress(didDone: (() -> ())?) {
           isLoading = true
           ProductServiceCall.post(parameter: [
               "name": txtName,
               "phone": txtMobile,
               "address": txtAddress,
               "city": txtCity,
               "state": txtState,
               "postal_code": txtPostalCode,
               "type_name": txtTypeName
           ], path: Globals.SV_ADD_ADDRESS, isToken: true) { responseObj in
               self.isLoading = false
               
               if let response = responseObj as? NSDictionary {
                   if response.value(forKey: KKey.status) as? String == "1" {
                       self.clearAll()
                       self.serviceCallList()
                       didDone?()
                       
                   } else {
                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                       self.showError = true
                   }
               }
           } failure: { error in
               self.isLoading = false
               self.errorMessage = error?.localizedDescription ?? "Fail"
               self.showError = true
        }
    }
}
