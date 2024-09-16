//
//  SearchTextFild.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/31/24.
//

import SwiftUI

struct SearchTextFild: View {
    
    @State var placholder: String = "Placholder"
    @Binding var text: String
    
    var body: some View {
        HStack(spacing: 15) {
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(.gray)
            
            TextField(placholder, text: $text)
                .font(.customfont(.regular, fontSize: 16))
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 30)
        .padding(10)
        //.background(Color(hex: "F8F6F1"))
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.gray20, lineWidth: 0.5))
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}


struct SearchTextFild_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        SearchTextFild(placholder: "Search Store", text: $text)
            .padding(15)
    }
}
