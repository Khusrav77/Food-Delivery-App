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
    var info: String = "Пожалуйста, войдите в учетную запииь, введите почту и пороль, чтобы войти"
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 16) {
            Image(logo)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.top, 60)
            
            Text(title)
                .font(.title)
                .multilineTextAlignment(.center)
            
            Text(info)
                .font(.subheadline)
                .multilineTextAlignment(.center)
            
        }
        .padding(.horizontal)
        .frame(width: .screenWidth, height: .screenHeight / 2.6)
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .black.opacity(0.1), radius: 5)
    }
}

#Preview {
    TopinfoView()
}
