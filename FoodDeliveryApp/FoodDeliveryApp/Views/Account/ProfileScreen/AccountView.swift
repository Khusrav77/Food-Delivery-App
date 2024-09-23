//
//  AccountView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct AccountView: View {
    @ObservedObject var vmaddress = DeliveryAddressViewModel.shared
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                HStack(spacing: 15) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .foregroundStyle(.secondary)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Your nament")
                            .font(.headline)
                        
                        Text("Your email")
                            .font(.subheadline)
                    }
                    Spacer()
                    Image(systemName: "pencil")
                    
                }
                Divider()
                
                ScrollView {
                    AccountRow(title: "Мои данные", imageOne: "person", imageTwo: "chevron.right")
                    
                    AccountRow(title: "Мои адреса", imageOne: "mappin.and.ellipse", imageTwo: "chevron.right")
                        .onTapGesture {
                            isPresented = true
                        }
                        .sheet(isPresented: $isPresented) {
                            DeliveryAddressView(vm: vmaddress)
                        }

                    AccountRow(title: "Заказы", imageOne: "cart", imageTwo: "chevron.right")
                    
                    AccountRow(title: "Способ оплаты", imageOne: "creditcard", imageTwo: "chevron.right")
                    
                    AccountRow(title: "Уведомления", imageOne: "bell.slash", imageTwo: "chevron.right")
                    
                    AccountRow(title: "Промокоды", imageOne: "tag", imageTwo: "chevron.right")
                    
                    AccountRow(title: "FaQ", imageOne: "questionmark.circle", imageTwo: "chevron.right")
                    
                    AccountRow(title: "Чат со поддержки", imageOne: "bubble.left", imageTwo: "chevron.right")
                    
                    AccountRow(title: "Выйти из аккаунта", imageOne: "rectangle.portrait.and.arrow.right", imageTwo: "chevron.right")
                        .foregroundStyle(.secondary)
                    
                    AccountRow(title: "Удалить аккаунт", imageOne: "trash", imageTwo: "chevron.right")
                        .foregroundStyle(.red)
                }
            }
            .padding()
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    
    AccountView()
}
