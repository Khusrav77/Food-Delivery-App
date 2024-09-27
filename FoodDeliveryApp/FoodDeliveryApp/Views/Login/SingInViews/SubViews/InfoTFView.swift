//
//  TextFieldView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct InfoTFView: View {
    // MARK: - Properties
    var title: String = ""
    @Binding var text: String
    @FocusState var isActive
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
                .frame(maxWidth: .infinity)
                .frame(height: 55).focused($isActive)
                .padding(.leading)
                .background(.gray.opacity(0.1))
                .clipShape(.rect(cornerRadius: 16))
            
            Text(title).padding(.leading)
                .foregroundStyle(isActive ? .gray : .gray.opacity(0.3))
                .offset(y: (isActive || !text.isEmpty) ? -45 : 0)
                .animation(.spring, value: isActive)
                .onTapGesture {
                    isActive = true
                }
        }
        .padding()
    }
}
#Preview {
    if #available(iOS 17.0, *) {
        SignInView()
    } else {
        // Fallback on earlier versions
    }
}