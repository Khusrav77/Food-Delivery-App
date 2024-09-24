//
//  TopinfoView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct TopinfoView: View {
    // MARK: - Properties
    var logo: String = "app_logoG"
    var title: String = "Добро пожаловать"
    var info: String = "Введите номер телефона, чтобы войти или зарегистрироваться"
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 16) {
            
            Image(logo)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.top, 60)
            
            Text(title)
                .font(.customfont(.semibold, fontSize: 26))
                .multilineTextAlignment(.center)
            
            Text(info)
                .font(.customfont(.regular, fontSize: 14))
                .multilineTextAlignment(.center)
            
        }
        .frame(width: .screenWidth, height: .screenHeight / 2.6)
        .background(.background)
        .clipShape(.rect(cornerRadius: 25))
        .shadow(color: .black.opacity(0.1), radius: 5)
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    TopinfoView()
}
