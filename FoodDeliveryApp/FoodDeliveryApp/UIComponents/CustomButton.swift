//
//  CustomButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct CustomButton: View {
    // MARK: - Properties
    var title: String = "Продолжить"
    @State var isEnabled: Bool = false
    let action: () -> Void
    
    // MARK: - Body
    var body: some View {
        Button{
            action()
        } label:{
            Text(title)
                .font(.customfont(.semibold, fontSize: 20))
                .foregroundColor(isEnabled ? .white : .white.opacity(0.6))
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(isEnabled ? .green : .green.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding(.horizontal, 16)
        .disabled(isEnabled)
    }
}


#Preview {
    CustomButton(action: {})
}
