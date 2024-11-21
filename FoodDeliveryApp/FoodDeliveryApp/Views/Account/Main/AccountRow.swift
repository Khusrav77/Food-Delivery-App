//
//  ButtonRow.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct AccountRow: View {
    // MARK: - Properties
    @State var title: String = ""
    @State var imageOne: String = ""
    @State var imageTwo: String = ""
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: imageOne)
                .font(.title2)
                .foregroundStyle(.secondary)
            
            Text(title)
                .font(.title3)
            
            Spacer()
            
            Image(systemName: imageTwo)
                .font(.title2)
                .foregroundStyle(.secondary)
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    
    AccountRow()
}
