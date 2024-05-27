//
//  WelcomeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color.green
            VStack {
                Spacer()
                Image("app_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                
                Text("Food\nDelivery")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundStyle(Color.greenPrimary)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                Text("Заказ продуктов прямо домой")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                //.padding(.top, 8)
                Spacer()
                
                NavigationLink {
                    SignInView()
                } label: {
                    RoundButton(title: "Начать") {
                    }
                }
            
                Spacer()
                    .frame(height: 60)
                
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WelcomeView()
        }
    }
}
