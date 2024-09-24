//
//  ForgotPasswordView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/24/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    // MARK: - Properties
    @ObservedObject var vm = SignInViewModel.shared
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            Text("Forgot Password")
                .font(.title.bold())
                .padding(.top, 40)
            Text("Enter your email address to reset your password.")
                .font(.body)
                .multilineTextAlignment(.center)
            
            TextField("Email", text: $vm.email)
                .keyboardType(.phonePad)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .padding(.leading)
                .background(.gray.opacity(0.1))
                .clipShape(.rect(cornerRadius: 20))
                .padding(.horizontal)
            
            SaveButton(title: "Send") {}
                .padding(.top)
            Spacer()
        }
    }
}

#Preview {
    ForgotPasswordView()
}
