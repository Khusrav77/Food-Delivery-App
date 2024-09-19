//
//  CategoryListView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/1/24.
//

import SwiftUI

struct CategoryListView: View {
    
    // MARK: - Properties
    @Namespace private var animationNamespase
    @State private var isSelectedCategory: String = "Все"
    let categories = ["Все", "Фрукты", "Овощи", "Мясо", "Рыба", "Молочное", "Бакалея", "Заморозка", "Для детей", "Сладкое", "Сухофрукты", "Готовая еда"]
    
    // MARK: - body
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 6){
                ForEach(categories, id: \.self) { category in
                    Button(action: {
                        isSelectedCategory = category
                    }) {
                        ZStack {
                            Text(category)
                                .font(.system(size: 14, weight: .semibold, design: .rounded))
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .foregroundColor(isSelectedCategory == category ? .white : .gray50)
                                .background(
                                    ZStack {
                                        
                                        if isSelectedCategory == category {
                                            Color.orange.clipShape(Capsule())
                                                .matchedGeometryEffect(id: "tabSelationID", in: animationNamespase)
                                        } else {
                                            Color(.secondarySystemBackground)
                                                .clipShape(Capsule())
                                            
                                        }
                                    }
                                )
                        }
                    }
                    
                }
            }
            .padding(.horizontal)
        }
        
    }
}

#Preview {
    CategoryListView()
}
