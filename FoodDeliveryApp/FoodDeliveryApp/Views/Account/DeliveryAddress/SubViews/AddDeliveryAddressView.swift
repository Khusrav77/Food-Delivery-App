//
//  AddAddressView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/23/24.
//

import SwiftUI

struct AddDeliveryAddressView: View {
    // MARK: - Properties
    @ObservedObject var vm = DeliveryAddressViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                HStack {
                    Button {
                        vm.txtName = "Home"
                    }label: {
                        Image(systemName: vm.txtName == "Home" ? "record.circle" : "circle")
                            .foregroundStyle(vm.txtName == "Home" ? Color.green : Color.gray)
                        
                        Text("Дом")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(vm.txtName == "Home" ? Color.green : Color.gray)
                    }
                    
                    Button {
                        vm.txtName = "Office"
                    }label: {
                        Image(systemName: vm.txtName == "Office" ? "record.circle" : "circle")
                            .foregroundStyle(vm.txtName == "Office" ? Color.green : Color.gray)
                        
                        Text("Офис")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(vm.txtName == "Office" ? Color.green : Color.gray)
                    }
                    
                    Button {
                        vm.txtName = "Other"
                    }label: {
                        Image(systemName: vm.txtName == "Other" ? "record.circle" : "circle")
                            .foregroundStyle(vm.txtName == "Other" ? Color.green : Color.gray)
                        
                        Text("Другой")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(vm.txtName == "Other" ? Color.green : Color.gray)
                    }
                    
                }
                .padding(.vertical)
                .buttonStyle(.plain)
                
                CustomInfoTF(title: "Введите Имя", text: $vm.txtName)
                
                CustomInfoTF(title: "Номер телефон", text: $vm.txtPhone)
                
                CustomInfoTF(title: "Город", text: $vm.txtCity)
                
                HStack {
                    CustomInfoTF(title: "Улица", text: $vm.txtStreet)
                    CustomInfoTF(title: "Дом", text: $vm.txtHouseNumber)
                }
                
                HStack {
                    CustomInfoTF(title: "Подъезд", text: $vm.txtEntrance)
                    CustomInfoTF(title: "Этаж", text: $vm.txtFloor)
                }
                
                HStack {
                    CustomInfoTF(title: "кв/офис", text: $vm.txtPostalCode)
                    
                    CustomInfoTF(title: "Домофон", text: $vm.txtApartmentOrOffice)
                }
                CustomInfoTF(title: "Коментарий", text: $vm.txtComment)
                
                SaveButton(title: "Сохранить", action: {
                    vm.saveAddress()
                })
                    .padding(.vertical)
                
                Spacer()
            }
            .padding(.top)
            .padding()
            .navigationTitle("Адрес доставки")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    DownButton()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddDeliveryAddressView()
    }
    
}
