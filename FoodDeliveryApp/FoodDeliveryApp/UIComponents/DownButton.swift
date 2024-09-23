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
                .foregroundColor(.black.opacity(0.5))
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(Circle())
        }
    }
}

#Preview {
    DownButton()
}
