//
//  CategoryListView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/1/24.
//

import SwiftUI

struct CategoryListView: View {
    
        let categories = ["Все", "Фрукты", "Овощи", "Мясо", "Рыба", "Молочное", "Бакалея", "Заморозка", "Для детей", "Сладкое", "Сухофрукты", "Готовая еда"]
        
        @State private var isSelectedCategory: String = "Все"
        
        var body: some View {
            ZStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 0){
                        ForEach(categories, id: \.self) { category in
                            Button(action: {
                                isSelectedCategory = category
                            }) {
                                Text(category)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 16)
                                    .foregroundColor(isSelectedCategory == category ? .white : .black)
                                    .background(
                                        ZStack {
                                           
                                            if isSelectedCategory == category {
                                                Color.orange.clipShape(Capsule())
                                                    .shadow(radius: 5)
                                            }
                                        }
                                    )
                                    
                                
                            }
                            .frame(maxWidth: .infinity, minHeight: 45)
                            .background(.gray.opacity(0.1))
                        }
                    }
                }
               
            }
            
        }
    }

   

#Preview {
    CategoryListView()
}
