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
                    Button {
                        isSelectedCategory = category
                    }label: {
                        Text(category)
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundStyle(category  == isSelectedCategory ? Color.orangePrimary : Color.black.opacity(0.5))
                            .padding(.horizontal, 15)
                            .padding(.vertical, 10)
                            .background(category  == isSelectedCategory ? Color.white : Color.gray.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: 2)
                            
                        
                        
                    }
                    
                }
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
        
    }
}

#Preview {
    CategoryListView()
}
