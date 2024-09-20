//
//  NavBarView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

struct NavBarView: View {
    @State private var navBarSelection: String = "Продукты"
    let navBarItems = ["Продукты", "Готовое Еда", "Здоровья"]
    var body: some View {
        
        HStack(spacing: 12) {
            ForEach(navBarItems, id: \.self) { item in
                Button {
                    navBarSelection = item
                }label: {
                    Text(item)
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                        .foregroundStyle(item  == navBarSelection ? Color.orangePrimary : Color.black.opacity(0.5))
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .background(item  == navBarSelection ? Color.white : Color.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: 2)
                    
                }
            }
        }
    }
}

#Preview {
    NavBarView()
}
