//
//  HorizontalScrollMenu.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/1/24.
//

import SwiftUI

struct HorizontalScrollMenu: View {
    
        let categories = ["Все", "Фрукты", "Овощи", "Мясо", "Рыба", "Молочное", "Бакалея", "Заморозка", "Для детей", "Сладкое", "Сухофрукты", "Готовая еда"]
        
        @State private var selectedCategory: String = "Все"
        
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(categories, id: \.self) { category in
                        Button(action: {
                            selectedCategory = category
                        }) {
                            Text(category)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(selectedCategory == category ? Color.orangePrimary : Color.gray.opacity(0.2))
                                .foregroundColor(selectedCategory == category ? .white : .black)
                                .cornerRadius(15)
                        }
                    }
                }
                .padding()
            }
        }
    }

   

#Preview {
    HorizontalScrollMenu()
}
