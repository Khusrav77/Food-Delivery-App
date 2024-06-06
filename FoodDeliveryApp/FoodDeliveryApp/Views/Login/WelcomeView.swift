//
//  WelcomeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct WelcomeView: View {
    // Constants
    let appLogoImageName = "app_logo"
    let appTitle = "Food\nDelivery"
    let appSubtitle = "Заказ продуктов прямо домой"
   // let startButtonTitle = "Начать"
    
    var body: some View {
        ZStack {
            Color.green
            VStack {
                Spacer()
                logoImage
                appTitleText
                appSubtitleText
                Spacer()
                startButton
                Spacer().frame(height: 60)
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
    
    // Logo Image
    private var logoImage: some View {
        Image(appLogoImageName)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
    
    // App Title Text
    private var appTitleText: some View {
        Text(appTitle)
            .font(.customfont(.alfaSlabOne, fontSize: 48))
            .foregroundStyle(Color.greenPrimary)
            .multilineTextAlignment(.center)
    }
    
    // App Subtitle Text
    private var appSubtitleText: some View {
        Text(appSubtitle)
            .font(.customfont(.medium, fontSize: 16))
            .foregroundColor(.white.opacity(0.7))
            .multilineTextAlignment(.center)
    }
    
    // Start Button
    private var startButton: some View {
        NavigationLink(destination: SignInView()) {
            StartedButton(title: "Начать") {

            }
        }
    }
}

#Preview {
    WelcomeView()
}





