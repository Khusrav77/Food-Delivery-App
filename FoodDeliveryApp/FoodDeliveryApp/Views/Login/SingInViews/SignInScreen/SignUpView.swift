//
//  SignUpView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/24/24.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var vm = SignInViewModel()
    var body: some View {
        VStack(spacing: 24) {
            
            TopinfoView(info: "Пожалуйста введите почто и пароль чтобы зарегистрироваться")
            
            InfoTFView(title: "Email", text: $vm.email)
            
            PasswordTF(title: "Password", text: $vm.password)

            CustomButton(title: "Продолжить", isEnabled: vm.isLoadinButtonDisabled) {}
                .padding(.vertical)
            
            OrView(title: "или войти")
            
            HStack(spacing: 60) {
                SocialButtonView(image: "aplle_logo", width: 32, height: 32, action: {})
                    
                SocialButtonView(image: "google_logo", width: 32, height: 32, action: {})
                
                SocialButtonView(image: "vk_logo", width: 32, height: 32, action: {})
            }
            .padding(.top)
            Spacer()
            Button {
                vm.email = ""
                vm.password = ""
                vm.showSignUp = true
                
            } label: {
                Text("у вас есть аккаунт? ***Sign In***")
            }
            .buttonStyle(.plain)

            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SignUpView()
}
