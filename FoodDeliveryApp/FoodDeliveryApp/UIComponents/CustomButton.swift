//
//  CustomButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    var isEnabled: Bool = false
    let action: () -> Void

    var body: some View {
        Button{
            action()
        } label:{
            Text(title)
                .font(.customfont(.semibold, fontSize: 20))
                .foregroundColor(isEnabled ? .greenPrimary : .greenPrimary.opacity(0.2))
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.1), radius: 5)
        }
        .padding(.horizontal, 15)
        .disabled(isEnabled)
    }
}


#Preview {
    CustomButton(title: "Продолжить", isEnabled: false, action: {})
}
