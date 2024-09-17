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
        
        ZStack{
            Color.cardsColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                TopinfoView()
                
                TextFieldView(vm: vm)
                
                ContinueButtonView(vm: vm)
                
                Text("или войти с помощью")
                    .font(.customfont(.regular, fontSize: 14))
                    .multilineTextAlignment(.center)
                    .padding()
                
                SocialButtonView(action: {}, imageName: "google_logo", buttonText: "Email")
                
                SocialButtonView(action: {}, imageName: "google_logo", buttonText: "Google")
                
                SocialButtonView(action: {}, imageName: "vk_logo", buttonText: "Вконтакте")
                
            }
            .padding(.bottom, 50)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    SignInView()
}







