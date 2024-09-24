//
//  TextFieldView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct InfoTFView: View {
    // MARK: - Properties
    var title: String = "Name"
    @Binding var textTF: String
    @FocusState var isActive
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .leading) {
            TextField(title, text: $textTF)
                .keyboardType(.phonePad)
                .frame(maxWidth: .infinity)
                .frame(height: 55).focused($isActive)
                .padding(.leading)
                .background(.gray.opacity(0.1))
                .clipShape(.rect(cornerRadius: 20))
            Text(title).padding(.leading)
                .offset(y: (isActive || !textTF.isEmpty) ? -45 : 0)
                .animation(.spring, value: isActive)
                .onTapGesture {
                    isActive = true
                }
        }
        .padding(.horizontal)
    }
}
#Preview {
    InfoTFView(textTF: .constant(""))
}
