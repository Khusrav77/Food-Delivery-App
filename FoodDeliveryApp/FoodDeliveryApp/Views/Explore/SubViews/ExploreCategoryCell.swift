//
//  ExploreCategoryCell.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

struct ExploreCategoryCell: View {
    @State var category: TypeCategory
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category.name)
                .font(.headline)
                .padding([.top, .leading], 10)
            Spacer()
            
            HStack {
                Spacer()
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding([.bottom, .trailing], 10)
            }
        }
        .frame(width: .infinity, height: 160)
        .background(category.color ?? Color(.systemGray6))
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(0.1)))
    }
}
  
#Preview {
    ExploreCategoryCell(category: TypeCategory(id: 1, name: "Test", image: "app_logoG", color: .purple))
}
