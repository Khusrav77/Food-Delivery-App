//
//  Verification.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/8/24.
//

import SwiftUI

struct VerificationView: View {
    // MARK: - Properties
    @ObservedObject var vm: SignInViewModel
    @Environment(\.dismiss) var dismiss
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            Text("Код отправлена на номер\n\(vm.phoneNumber)")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack(spacing: 15) {
                ForEach(0..<6, id: \.self) {index in
                    CodeView(code: vm.getCodeAtIndex(index: index))
                }
            }
            .padding(.horizontal)
            
            
            Button {
                
            } label: {
                Text("Отправить повтоно через:")
                    .foregroundStyle(.green)
                    .font(.customfont(.regular, fontSize: 16))
            }
            .padding()
            
            CustomButton(title: "Далее", isEnabled: vm.isCodeSent) {}
           
            Spacer()
        }
        .padding()
        .navigationTitle("Verify Phone")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                BackButton()
            }
        }
    }
}

#Preview {
    VerificationView(vm: SignInViewModel())
}
