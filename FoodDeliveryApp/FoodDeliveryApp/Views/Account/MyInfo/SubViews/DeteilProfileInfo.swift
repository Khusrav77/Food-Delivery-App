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
                HStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Имя:")
                        Text("Фамилия:")
                        Text("Телефон:")
                        Text("Email:")
                  }
                    .font(.headline)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Имя")
                        Text("Фамилия")
                        Text("Телефон")
                        Text("Email")
                    }
                    .font(.body)
                    Spacer()
                }
                .padding()
                .padding(.top)
                .frame(maxWidth: .infinity)
                Spacer()
            }
            .navigationTitle("Мои данные")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Править") {
                        
                    }
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
