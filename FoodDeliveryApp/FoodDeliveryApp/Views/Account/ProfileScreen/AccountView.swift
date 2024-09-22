//
//  AccountView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
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
                ButtonRow(title: "Мои данные", image: "chevron.right", action: {})
                
                ButtonRow(title: "Мои адреса", image: "chevron.right", action: {})
                
                ButtonRow(title: "Заказы", image: "chevron.right", action: {})
                
                ButtonRow(title: "Способ оплаты", image: "chevron.right", action: {})
                
                ButtonRow(title: "FaQ", image: "chevron.right", action: {})
                
                ButtonRow(title: "Чат со поддержки", image: "chevron.right", action: {})
                
                ButtonRow(title: "Выйти из аккаунта", image: "rectangle.portrait.and.arrow.right", action: {})
                    .foregroundStyle(.secondary)
                
                ButtonRow(title: "Удалить аккаунт", image: "trash", action: {})
                    .foregroundStyle(.red)
            }
            
            
        }
        .padding()
    }
}

#Preview {
    AccountView()
}
