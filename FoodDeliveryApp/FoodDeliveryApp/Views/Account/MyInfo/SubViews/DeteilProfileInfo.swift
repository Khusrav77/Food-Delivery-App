//
//  DeteilProfileInfo.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/26/24.
//

import SwiftUI

struct DeteilProfileInfo: View {
    var body: some View {
        NavigationStack {
            VStack {
               
                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Имя:")
                        Text("Фамилия:")
                        Text("Телефон:")
                        Text("Email:")
                  }
                    .font(.headline)
                    .padding(16)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.primary.opacity(0.2), lineWidth: 1)
                    }
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 1, height: 150)
                        .foregroundStyle(.green)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Хусрав")
                        Text("Сафиев")
                        Text("+7 931 9617071")
                        Text("shh85b@gmail.com")
                    }
                    .font(.body)
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(.background)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.primary.opacity(0.2), lineWidth: 1)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Мои данные")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Править") {
                        
                    }
                    .buttonStyle(.plain)
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    BackButton()
                }
            }
        }
    }
}

#Preview {
    DeteilProfileInfo()
}
