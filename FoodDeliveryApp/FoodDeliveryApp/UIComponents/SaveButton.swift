//
//  SaveButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/23/24.
//

import SwiftUI

struct SaveButton: View {
    @State var title: String = "Save"
    var action: () -> Void = {}
    var body: some View {
        Button{
            action()
        }label: {
            Text(title)
                .font(.title3)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(color: .black.opacity(0.1), radius: 3)
        }
        .padding()
    }
}

#Preview {
    SaveButton()
}
