//
//  CodeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct CodeView: View {
    // MARK: - Properties
    var code: String
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 10) {
            Text(code)
                .foregroundStyle(Color.black)
                .font(.customfont(.medium, fontSize: 14))
                .frame(height: 45)
            
            Capsule()
                .fill(Color.black.opacity(0.5))
                .frame(height: 2)
            
        }
    }
}

#Preview {
    CodeView(code: "")
}
