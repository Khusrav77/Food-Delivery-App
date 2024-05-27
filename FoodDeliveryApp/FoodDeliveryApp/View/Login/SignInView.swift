//
//  SignInView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct SignInView: View {
    @State var textMobile: String = ""
    var body: some View {
        ZStack {
            VStack {
                Image ("app_logoG")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .padding(.top, 100)
                
                Text("Добро пожаловать")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundStyle(Color.titleText)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                
                Text("Введите номер телефона, чтобя войти или\nзарегистрироваться")
                    .font(.customfont(.medium, fontSize: 14))
                    .foregroundStyle(Color.primaryText)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                HStack {
                    Button {
                        
                    } label: {
                        Image("")
                        
                        Text("+7")
                            .font(.customfont(.medium, fontSize: 18))
                            .foregroundColor(.black.opacity(0.7))
                    }
                    TextField("999 000 00 00", text: $textMobile)
                        .frame(minWidth: 0, maxWidth: .infinity)
                }
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                .background(Color.cardsColor)
                .cornerRadius(25)
                .padding(.top,20)
                
                Button {
                  
                } label: {
                    Text("Продолжить")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                .background(Color.green)
                .cornerRadius(25)
                .padding(.top, 20)
                
            Spacer()
                
                Text("или войти с помощью")
                    .font(.customfont(.semibold, fontSize: 14))
                    .foregroundColor(Color.primaryText)
                    .multilineTextAlignment(.center)
                    
                
                Button {
                  
                } label: {
                    Image("google_logo")
                    Text("Google")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                .background(Color.gray50)
                .cornerRadius(25)
                .padding(.top, 20)
                
                Button {
                  
                } label: {
                    Image("vk_logo")
                    Text("Вконтакте")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                .background(Color.gray50)
                .cornerRadius(25)
                .padding(.top, 8)
                    
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

#Preview {
    SignInView()
}
