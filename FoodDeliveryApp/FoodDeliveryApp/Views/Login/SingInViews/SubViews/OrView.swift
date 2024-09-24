//
//  OrView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/24/24.
//

import SwiftUI

struct OrView: View {
    // MARK: - Properties
    var title: String = "Или войти"
    
    // MARK: - Body
    var body: some View {
        HStack {
            Rectangle()
                .frame(width:.infinity, height: 1.5)
                .foregroundStyle(.gray.opacity(0.3))
            
            Text(title)
                .font(.subheadline)
                .lineLimit(1)
                
            Rectangle()
                .frame(width:.infinity, height: 1.5)
                .foregroundStyle(.gray.opacity(0.3))
        }
        .padding(.horizontal)
    }
}

#Preview {
    OrView()
}
