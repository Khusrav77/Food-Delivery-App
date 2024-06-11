//
//  SignInView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct SignInView: View {
    @StateObject private var viewModel = SignInViewModel.shared
    
    
    var body: some View {
        
        ZStack{
            Color.cardsColor
            VStack {
                
                VStack(spacing: 20) {
                    
                    Image("app_logoG")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.top, 60)
                    
                    Text("Добро пожаловать")
                        .font(.customfont(.semibold, fontSize: 26))
                        .multilineTextAlignment(.center)
                    
                    Text("Введите номер телефона, чтобы войти или зарегистрироваться")
                        .font(.customfont(.regular, fontSize: 14))
                        .multilineTextAlignment(.center)
                       
                }
                .frame(width: .screenWidth, height: .screenHeight / 2.8)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .shadow(color: .black.opacity(0.1), radius: 5)
                
                Spacer()
                
                HStack {
                    Button {
                       // viewModel.getCountryCode()
                    } label: {
                        Text("+7")
                            .font(.customfont(.medium, fontSize: 18))
                            .foregroundColor(.black.opacity(0.7))
                            .padding(8)
                    }
                    TextField("999 000 00 00", text: $viewModel.mobileNumber)
                        .keyboardType(.phonePad)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                }
                .frame(minHeight: 60)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .shadow(color: .black.opacity(0.1), radius: 5)
                .padding()
                
                
                VStack{
                    
                    NavigationLink(destination: Verification(viewModel: viewModel)){
                        Text("Продолжить")
                            .font(.customfont(.semibold, fontSize: 20))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(minHeight: 60)
                            .frame(maxWidth: .infinity)
                            .background(Color.greenSecondary)
                            .cornerRadius(24)
                            .padding()
                    }
                    .disabled(viewModel.isLoadinButtonDisabled)
                    
                    Spacer()
                    
                    Text("или войти с помощью")
                        .font(.customfont(.regular, fontSize: 14))
                        .multilineTextAlignment(.center)
                        .padding(.top, 16)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        
                        HStack {
                            Spacer().padding()
                            Image("google_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Google")
                                .font(.customfont(.semibold, fontSize: 20))
                                .foregroundColor(.white)
                                .frame(minHeight: 60)
                                .frame(maxWidth: .infinity)
                            Spacer().padding()
                        }
                        .background(Color.gray50)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                        .padding()
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        
                        HStack {
                            Spacer().padding()
                            Image("vk_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Вконтакте")
                                .font(.customfont(.semibold, fontSize: 20))
                                .foregroundColor(.white)
                                .frame(minHeight: 60)
                                .frame(maxWidth: .infinity)
                            Spacer().padding()
                        }
                        .background(Color.gray50)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                    
                }
                
                Spacer()
            }
            
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

