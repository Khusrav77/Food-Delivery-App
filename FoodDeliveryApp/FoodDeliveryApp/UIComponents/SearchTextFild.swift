//
//  SearchTextFild.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/31/24.
//

import SwiftUI

struct SearchTextFild: View {
    // MARK: - Properties
    var title: String = "Placholder"
    @Binding var text: String
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(.leading, 16)
                .foregroundColor(.gray)
            
            TextField(title, text: $text)
                .font(.customfont(.regular, fontSize: 16))
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
        }
        .frame(height: 55)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray20, lineWidth: 0.5))
    }
}


struct SearchTextFild_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        SearchTextFild(title: "Search Store", text: $text)
            .padding(15)
    }
}
