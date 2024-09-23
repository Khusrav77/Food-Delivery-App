//
//  AddAddressView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/23/24.
//

import SwiftUI

struct AddDeliveryAddressView: View {
    @ObservedObject var vm = DeliveryAddressViewModel()
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Button {
                    vm.txtTitle = "Home"
                }label: {
                    Image(systemName: vm.txtTitle == "Home" ? "record.circle" : "circle")
                        .foregroundStyle(vm.txtTitle == "Home" ? Color.green : Color.gray)
                    
                    Text("Дом")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(vm.txtTitle == "Home" ? Color.green : Color.gray)
                    
                }
                
                Button {
                    vm.txtTitle = "Office"
                }label: {
                    Image(systemName: vm.txtTitle == "Office" ? "record.circle" : "circle")
                        .foregroundStyle(vm.txtTitle == "Office" ? Color.green : Color.gray)
                    
                    Text("Офис")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(vm.txtTitle == "Office" ? Color.green : Color.gray)
                }
                
                Button {
                    vm.txtTitle = "Other"
                }label: {
                    Image(systemName: vm.txtTitle == "Other" ? "record.circle" : "circle")
                        .foregroundStyle(vm.txtTitle == "Other" ? Color.green : Color.gray)
                    
                    Text("Другой")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(vm.txtTitle == "Other" ? Color.green : Color.gray)
                }
                
            }
            .buttonStyle(.plain)
            
            TextField("Введите Имя", text: $vm.txtName)
            TextField("Номер телефона", text: $vm.txtName)
            TextField("Город", text: $vm.txtName)
            HStack {
                TextField("Улица", text: $vm.txtName)
                TextField("Дом", text: $vm.txtName)
            }
            
            HStack {
                TextField("Поезд", text: $vm.txtName)
                TextField("Этаж", text: $vm.txtName)
            }
            
            TextField("Домофон", text: $vm.txtName)
            
            SaveButton(title: "Сохранить", action: {})
            
            Spacer()
        }
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

#Preview {
    NavigationStack {
        AddDeliveryAddressView()
    }
    
}
