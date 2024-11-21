//
//  SaveButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/23/24.
//

import SwiftUI

struct SaveButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        Button{
            action()
        }label: {
            Text(title)
                .font(.title3)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }
}

#Preview {
    SaveButton(title: "Save", action: {})
}
