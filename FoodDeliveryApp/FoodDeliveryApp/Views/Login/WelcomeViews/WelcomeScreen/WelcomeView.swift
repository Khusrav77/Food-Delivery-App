//
//  WelcomeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct WelcomeView: View {
    
    // MARK: - Properties
    let appLogoImageName = "app_logo"
    let appTitle = "Food\nDelivery"
    let appSubtitle = "Заказ продуктов прямо домой"
    let startButton = "Начать"
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            ZStack {
                Color.green
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                
                    Image(appLogoImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text(appTitle)
                        .font(.customfont(.alfaSlabOne, fontSize: 48))
                        .foregroundStyle(Color.greenPrimary)
                        .multilineTextAlignment(.center)
                    
                    Text(appSubtitle)
                        .font(.customfont(.medium, fontSize: 16))
                        .foregroundColor(.white.opacity(0.7))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    NavigationLink(destination: SignInView()){
                        Text(startButton)
                            .font(.customfont(.semibold, fontSize: 20))
                            .foregroundStyle(Color.greenPrimary)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: 60)
                            .background(.background)
                            .clipShape(.rect(cornerRadius: 25))
                            .shadow(color: .black.opacity(0.3), radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 8)
                    }
                }
                .padding()
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    WelcomeView()
}





