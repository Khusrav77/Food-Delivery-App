//
//  CustomRegulatorButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

struct CustomRegulatorButton: View {
    // MARK: - Properties
    let name: String
    let action: () -> Void
   
    // MARK: - Body
    var body: some View {
        Button {
           action()
        }label: {
            Image(systemName: name)
                .font(.title3)
                .foregroundStyle(.primary.opacity(0.8))
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    CustomRegulatorButton(name: "plus", action: {})
}
