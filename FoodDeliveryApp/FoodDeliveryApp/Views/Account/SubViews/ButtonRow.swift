//
//  ButtonRow.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct ButtonRow: View {
    @State var title: String = ""
    @State var imageOne: String = ""
    @State var imageTwo: String = ""
    var action: () -> Void
    var body: some View {
        Button{
            action()
        } label:{
            HStack(spacing: 15){
                Image(systemName: imageOne)
                    .font(.title2)
                    .foregroundStyle(.secondary)
                    .padding(.leading)
                
                Text(title)
                    .font(.title3)
                   
                
                Spacer()
                
                Image(systemName: imageTwo)
                    .font(.title2)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 3)
        .buttonStyle(.plain)
    }
}

#Preview {
    
    ButtonRow(action: {})
}
