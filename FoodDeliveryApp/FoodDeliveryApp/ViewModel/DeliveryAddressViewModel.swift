//
//  DeliveryAddressViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/17/24.
//

import Foundation


final class DeliveryAddressViewModel: ObservableObject {
    // MARK: - Properties
    static var shared: DeliveryAddressViewModel = DeliveryAddressViewModel()
    
    @Published var txtTitle: String = "Home"
    @Published var txtName: String = ""
    @Published var txtPhone: String = ""
    @Published var txtCity: String = ""
    @Published var txtStreet: String = ""
    @Published var txtHouseNumber: String = ""
    @Published var txtApartmentOrOffice: String = ""
    @Published var txtEntrance: String = ""
    @Published var txtFloor: String = ""
    @Published var txtPostalCode: String = ""
    @Published var txtComment: String = ""
    @Published var isSelected: Bool = false
    
    @Published var showError = false
    @Published var errorMessage = ""
    @Published var showaddedAddress = false
    
    @Published var address: [Address] = []
    
    init() {
        serviceCallList()
    }
    
    
    func setData(address: Address) {
        txtTitle = address.title
        txtName = address.name
        txtPhone = address.phone
        txtCity = address.city
        txtStreet = address.street
        txtHouseNumber = address.houseNumber
        txtApartmentOrOffice = address.apartmentOrOffice ?? ""
        txtEntrance = address.entrance ?? ""
        txtFloor = address.floor ?? ""
        txtPostalCode = address.postalCode ?? ""
        txtComment = address.comment ?? ""
    }
    
    func saveAddress() {
        let newId = (address.map { $0.id }.max() ?? 0) + 1
        let newAddress = Address(
            id: newId,
            title: txtTitle,
            name: txtName,
            phone: txtPhone,
            city: txtCity,
            street: txtStreet,
            houseNumber: txtHouseNumber,
            apartmentOrOffice: txtApartmentOrOffice,
            entrance: txtEntrance,
            floor: txtFloor,
            postalCode: txtPostalCode,
            comment: txtComment
        )
        address.append(newAddress)
        print("Новый адрес добавлен: \(newAddress)")
            print("Текущий список адресов: \(address)")
        showaddedAddress.toggle()
        clearAll()
    }
    
    private  func clearAll() {
        txtTitle = "Home"
        txtName = ""
        txtPhone = ""
        txtCity = ""
        txtStreet = ""
        txtHouseNumber = ""
        txtApartmentOrOffice = ""
        txtEntrance = ""
        txtFloor = ""
        txtPostalCode = ""
        txtComment = ""
    }
    
    // MARK: - SERVICE CALL
    func serviceCallList() {
        
    }
}
