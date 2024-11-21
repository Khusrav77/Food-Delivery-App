//
//  SignInView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

@available(iOS 17.0, *)
struct SignInView: View {
    // MARK: - Properties
    @StateObject var vm = SignInViewModel()
    @FocusState var isActive
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack(alignment:.topLeading){
                VStack(spacing: 24) {
                    
                    TopinfoView()
                    
                    InfoTFView(title: "Email", text: $vm.email)
                    
                    PasswordTF(title: "Password", text: $vm.password)
                    
                    HStack {
                        Toggle(isOn: $vm.rememberMe) {
                            Text("Label")
                        }
                        .toggleStyle(RememberStye())
                        
                        Spacer()
                        
                        Button {
                            vm.showForgotPassword.toggle()
                        } label: {
                            Text("Забыл пароль?")
                                .font(.footnote)
                                .foregroundColor(.black.opacity(0.8))
                            
                        }
                        .buttonStyle(.plain)
                    }
                    .padding(.horizontal)
                    
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
                        Text("у вас нет аккаунта? ***Sign Up***")
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    if #available(iOS 17.0, *) {
        SignInView()
    } else {
        // Fallback on earlier versions
    }
}







