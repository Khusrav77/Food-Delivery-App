//
//  AccountView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        LazyVStack(spacing: 15) {
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
                ButtonRow(title: "Мои данные", imageOne: "person", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "Мои адреса", imageOne: "mappin.and.ellipse", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "Заказы", imageOne: "cart", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "Способ оплаты", imageOne: "creditcard", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "Уведомления", imageOne: "bell.slash", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "Промокоды", imageOne: "tag", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "FaQ", imageOne: "questionmark.circle", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "Чат со поддержки", imageOne: "bubble.left", imageTwo: "chevron.right", action: {})
                
                ButtonRow(title: "Выйти из аккаунта", imageOne: "rectangle.portrait.and.arrow.right", imageTwo: "chevron.right", action: {})
                    .foregroundStyle(.secondary)
                
                ButtonRow(title: "Удалить аккаунт", imageOne: "trash", imageTwo: "chevron.right" , action: {})
                    .foregroundStyle(.red)
            }
            
            
        }
        .padding()
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    
    AccountView()
}
