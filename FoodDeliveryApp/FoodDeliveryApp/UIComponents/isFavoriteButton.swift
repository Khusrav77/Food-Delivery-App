//
//  isFavoriteButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

struct isFavoriteButton: View {
    
    // MARK: - Properties
    let toggleAction: () -> Void
    
    // MARK: - Body
    var body: some View {
        Button{
            toggleAction()
        }label: {
            Image(systemName: "heart.fill")
                .foregroundStyle(.red.opacity(0.8))
                .padding(8)
                .background(.gray.opacity(0.2))
                .clipShape(Circle())
                //.shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
            
        }
    }
}

#Preview {
    isFavoriteButton(toggleAction: {})
}
