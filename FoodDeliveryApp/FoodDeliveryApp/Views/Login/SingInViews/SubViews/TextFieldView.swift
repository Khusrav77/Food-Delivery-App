//
//  TextFieldView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct TextFieldView: View {
    // MARK: - Properties
    @ObservedObject var vm: SignInViewModel
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button {
                // viewModel.getCountryCode()
            } label: {
                Text("+7")
                    .font(.customfont(.medium, fontSize: 18))
                    .foregroundColor(.black.opacity(0.7))
                    .padding(8)
            }
            TextField("999 000 00 00", text: $vm.phoneNumber)
                .keyboardType(.phonePad)
                .frame(maxWidth: .infinity)
                .padding()
        }
        .frame(minHeight: 60)
        .background(.background)
        .clipShape(.rect(cornerRadius: 25))
        .shadow(color: .black.opacity(0.1), radius: 5)
        .padding(.horizontal)
    }
}
#Preview {
    TextFieldView(vm: SignInViewModel())
}
