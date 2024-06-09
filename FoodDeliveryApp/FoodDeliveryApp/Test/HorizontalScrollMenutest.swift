//
//  Piker.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//


import SwiftUI

struct HorizontalScrollMenutest: View {
   
        let categories = ["Все", "Фрукты", "Овощи", "Мясо", "Рыба", "Молочное", "Бакалея", "Заморозка", "Для детей", "Сладкое", "Сухофрукты", "Готовая еда"]
        
        @State private var selectedCategory: String = "Все"
        
        var body: some View {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(categories, id: \.self) { category in
                            Button(action: {
                                selectedCategory = category
                            }) {
                                Text(category)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 16)
                                    .background(selectedCategory == category ? Color.orange : Color(hex: "F8F6F1"))
                                    .foregroundColor(selectedCategory == category ? .white : .gray)
                                    .clipShape(Capsule())
                                    .overlay(Capsule().stroke(Color.yellow))
                                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                            }
                        }
                    }
                    .padding()
                }
                
                // Example content below the horizontal menu
                Text("Selected Category: \(selectedCategory)")
                    .font(.title)
                    .padding()
                
                Spacer()
            }
        }
    }

    #Preview {
        HorizontalScrollMenutest()
    }


