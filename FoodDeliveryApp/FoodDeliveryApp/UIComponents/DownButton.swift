//
//  DownButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/23/24.
//

import SwiftUI

struct DownButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        Button {
            dismiss()
        }label: {
            Image(systemName: "chevron.down")
                .font(.headline)
                .foregroundStyle(.white.opacity(0.9))
                .padding(12)
                .background(.gray.opacity(0.15))
                .clipShape(Circle())
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    
    DownButton()
}
