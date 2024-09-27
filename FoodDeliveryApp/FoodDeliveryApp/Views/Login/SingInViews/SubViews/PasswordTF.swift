//
//  PasswordTF.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/24/24.
//

import SwiftUI

struct PasswordTF: View {
    // MARK: - Properties
    var title: String = "Password"
    @Binding var text: String
    @FocusState var isActive
    @State var showPassword: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .leading){
            SecureField("", text: $text)
                .padding(.leading)
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .opacity(showPassword ? 0 : 1)
                
            TextField("", text: $text)
                .padding(.leading)
                .frame(maxWidth: .infinity)
                .frame(height: 55).focused($isActive)
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .opacity(showPassword ? 1 : 0)
            
            Text(title).padding(.leading)
                .foregroundStyle(isActive ? .gray : .gray.opacity(0.3))
                .offset(y: (isActive || !text.isEmpty) ? -45 : 0)
                .animation(.spring, value: isActive)
                .onTapGesture {
                    isActive = true
                }
            
        }
        .overlay(alignment: .trailing) {
            Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                .padding(16)
                .containerShape(Rectangle())
                .foregroundStyle(showPassword ? .gray.opacity(0.1) : .gray)
                .onTapGesture {
                    showPassword.toggle()
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    if #available(iOS 17.0, *) {
        SignInView()
    } else {
        // Fallback on earlier versions
    }
}
