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
            
            Image("search")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            
            TextField(placholder, text: $text)
                .font(.customfont(.regular, fontSize: 16))
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
                .frame(minWidth: 0, maxWidth: .infinity)
        }
        .frame(height: 30)
        .padding(10)
        .background(Color(hex: "F8F7F2"))
        .cornerRadius(20)
    }
}


struct SearchTextFild_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        SearchTextFild(placholder: "Search Store", text: $text)
            .padding(15)
    }
}
