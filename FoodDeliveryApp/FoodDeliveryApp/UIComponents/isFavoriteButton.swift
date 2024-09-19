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
                .font(.title3)
                .foregroundStyle(.red.opacity(0.8))
                .padding(6)
                .background(.gray.opacity(0.1))
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.1), radius: 8)
            
        }
    }
}

#Preview {
    isFavoriteButton(toggleAction: {})
}
