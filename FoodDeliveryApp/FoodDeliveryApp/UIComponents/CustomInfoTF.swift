//
//  CustomInfoTF.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/24/24.
//

import SwiftUI

struct CustomInfoTF: View {
    // MARK: - Properties
    var title: String = "Hello, World!"
    @Binding var text: String
    
    // MARK: - Body
    var body: some View {
        TextField(title, text: $text)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .padding(.leading)
            .background(.gray.opacity(0.1))
            .clipShape(.rect(cornerRadius: 16))
    }
}

#Preview {
    CustomInfoTF(text: .constant("Hello, World!"))
}
