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
    @Published var txtCity: String = ""
    @Published var txtstreet: String = ""
    @Published var txthouseNumber: String = ""
    @Published var txtapartmentOrOffice: String = ""
    @Published var txtentrance: String = ""
    @Published var txtfloor: String = ""
    @Published var txtPostalCode: String = ""
    @Published var txtcomment: String = ""
    @Published var isSelected: Bool = false
    
    @Published var showError = false
    @Published var errorMessage = ""
    @Published var isLoading = false
    
    @Published var address: [Address] = [
        Address(id: 1, name: "Домой", city: "Санкт-Петербург", street: "Невский проспект", houseNumber: "12,", apartmentOrOffice: "кв 34,", entrance: "Подъезд 1,", floor: "этаж 3,", postalCode: "191025", comment: "Доставка в офис", isSelected: false),
                Address(id: 2, name: "Офис", city: "Москва", street: "ул.Арбат", houseNumber: "25,", apartmentOrOffice: "офис 45,", entrance: "", floor: "этаж 5,", postalCode: "119002", comment: "Доставка домой", isSelected: true),
                Address(id: 3, name: "Родители", city: "Казань", street: "Пушкина", houseNumber: "10,", apartmentOrOffice: "кв 109,", entrance: "Подъезд 3,", floor: "этаж 7,", postalCode: "420015", comment: "Без звонка", isSelected: false)
            
    ]
    
    init() {
        serviceCallList()
    }
    
    func clearAll() {
        txtName = ""
        txtCity = ""
        txtstreet = ""
        txthouseNumber = ""
        txtapartmentOrOffice = ""
        txtentrance = ""
        txtfloor = ""
        txtPostalCode = ""
        txtcomment = ""
    }
    
    func setData(address: Address) {
        txtName = address.name ?? ""
        txtCity = address.city
        txtstreet = address.street
        txthouseNumber = address.houseNumber
        txtapartmentOrOffice = address.city
        txtentrance = address.entrance ?? ""
        txtfloor = address.floor ?? ""
        txtPostalCode = address.postalCode
        txtcomment = address.comment ?? ""
    }
    
    // MARK: - SERVICE CALL
    
    func serviceCallList() {
        //           isLoading = true
        //           ServiceCall.post(parameter: [:], path: Globals.SV_ADDRESS_LIST, isToken: true) { responseObj in
        //               self.isLoading = false
        //               if let response = responseObj as? NSDictionary {
        //                   if response.value(forKey: KKey.status) as? String == "1" {
        //                       self.listAddress = (response.value(forKey: KKey.payload) as? NSArray ?? []).map { address in
        //                           AddressModal(dict: address as? NSDictionary ?? [:])
        //                       }
        //                   } else {
        //                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
        //                       self.showError = true
        //                   }
        //               }
        //           } failure: { error in
        //               self.isLoading = false
        //               self.errorMessage = error?.localizedDescription ?? "Fail"
        //               self.showError = true
        //           }
    }
    
    func serviceCallRemove(address: Address) {
        //           isLoading = true
        //           ServiceCall.post(parameter: ["address_id": address.id], path: Globals.SV_REMOVE_ADDRESS, isToken: true) { responseObj in
        //               self.isLoading = false
        //
        //               if let response = responseObj as? NSDictionary {
        //                   if response.value(forKey: KKey.status) as? String == "1" {
        //                       self.serviceCallList()
        //
        //                   } else {
        //                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
        //                       self.showError = true
        //                   }
        //               }
        //           } failure: { error in
        //               self.isLoading = false
        //               self.errorMessage = error?.localizedDescription ?? "Fail"
        //               self.showError = true
        //           }
    }
    
    func serviceCallUpdateAddress(address: Address?, didDone: (() -> ())?) {
        //           isLoading = true
        //           ServiceCall.post(parameter: [
        //               "address_id": address?.id ?? "",
        //               "name": txtName,
        //               "type_name": txtTypeName,
        //               "phone": txtMobile,
        //               "address": txtAddress,
        //               "city": txtCity,
        //               "state": txtState,
        //               "postal_code": txtPostalCode
        //           ], path: Globals.SV_UPDATE_ADDRESS, isToken: true) { responseObj in
        //               self.isLoading = false
        //
        //               if let response = responseObj as? NSDictionary {
        //                   if response.value(forKey: KKey.status) as? String == "1" {
        //                       self.clearAll()
        //                       self.serviceCallList()
        //                       didDone?()
        //
        //                   } else {
        //                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
        //                       self.showError = true
        //                   }
        //               }
        //           } failure: { error in
        //               self.isLoading = false
        //               self.errorMessage = error?.localizedDescription ?? "Fail"
        //               self.showError = true
        //           }
    }
    
    func serviceCallAddAddress(didDone: (() -> ())?) {
        //           isLoading = true
        //         //  ServiceCall.post(parameter: [
        //               "name": txtName,
        //               "phone": txtMobile,
        //               "address": txtAddress,
        //               "city": txtCity,
        //               "state": txtState,
        //               "postal_code": txtPostalCode,
        //               "type_name": txtTypeName
        //           ], path: Globals.SV_ADD_ADDRESS, isToken: true) { responseObj in
        //               self.isLoading = false
        //
        //               if let response = responseObj as? NSDictionary {
        //                   if response.value(forKey: KKey.status) as? String == "1" {
        //                       self.clearAll()
        //                       self.serviceCallList()
        //                       didDone?()
        //
        //                   } else {
        //                       self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
        //                       self.showError = true
        //                   }
        //               }
        //           } failure: { error in
        //               self.isLoading = false
        //               self.errorMessage = error?.localizedDescription ?? "Fail"
        //               self.showError = true
        //        }
    }
}
