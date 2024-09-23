//
//  SignInView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct SignInView: View {
    // MARK: - Properties
    @StateObject private var vm = SignInViewModel.shared
   
    // MARK: - Body
    var body: some View {
        
        NavigationStack {
            ZStack(alignment:.topLeading){
                    
                    VStack(spacing: 20) {
                        
                        TopinfoView()
                        
                        TextFieldView(vm: vm)
                        
                        NavigationLink(destination:VerificationView(vm: vm)){
                            CustomButton(title: "Продолжить", isEnabled: vm.isLoadinButtonDisabled) {}
                        }
                        
                        Text("или войти с помощью")
                            .font(.customfont(.regular, fontSize: 14))
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        SocialButtonView(action: {}, imageName: "google_logo", buttonText: "Email")
                        
                        SocialButtonView(action: {}, imageName: "google_logo", buttonText: "Google")
                        
                        SocialButtonView(action: {}, imageName: "vk_logo", buttonText: "Вконтакте")
                        
                    }
                    .padding(.bottom, 50)
                    
                    BackButton()
                        .padding()
                }
        
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    SignInView()
}







