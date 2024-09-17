//
//  ContinueButtonView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct ContinueButtonView: View {
    
    // MARK: - Properties
    @ObservedObject var vm: SignInViewModel
    
    // MARK: - Body
    var body: some View {
        VStack {
            NavigationLink(destination: VerificationView(vm: vm)){
                Text("Продолжить")
                    .font(.customfont(.semibold, fontSize: 20))
                    .foregroundColor(.black.opacity(0.6))
                    .multilineTextAlignment(.center)
                    
            }
            .disabled(vm.isLoadinButtonDisabled)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(vm.isLoadinButtonDisabled ? Color.white : Color.green)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 8)
        .padding(.horizontal)
    }
}

#Preview {
    ContinueButtonView(vm: SignInViewModel())
}
