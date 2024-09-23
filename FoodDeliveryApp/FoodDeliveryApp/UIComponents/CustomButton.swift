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
                .foregroundColor(isEnabled ? .greenPrimary : .greenPrimary.opacity(0.2))
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(color: .black.opacity(0.1), radius: 3)
        }
        .padding(.horizontal, 15)
        .disabled(isEnabled)
    }
}


#Preview {
    CustomButton(action: {})
}
