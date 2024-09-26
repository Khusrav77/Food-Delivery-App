//
//  BackButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        }label: {
            Image(systemName: "chevron.left")
                .font(.title3)
                .foregroundColor(.black.opacity(0.5))
                .padding(12)
                .background(.gray.opacity(0.1))
                .clipShape(Circle())
        }
    }
}

#Preview {
    BackButton()
}
