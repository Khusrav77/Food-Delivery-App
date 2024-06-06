//
//  SignInView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/26/24.
//

import SwiftUI

struct SignInView: View {
    @StateObject private var viewModel = SignInViewModel()
    
    
    var body: some View {
        VStack {
            appLogo
            welcomeText
            phoneNumberInput
            continueButton
            verificationCodeInput
            Spacer()
            alternativeSignInText
            googleSignInButton
            vkSignInButton
            Spacer().frame(height: 40)
        }
        .padding(.horizontal, 20)
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
    
 // MARK: Private mathed
    
    private var appLogo: some View {
        Image("app_logoG")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding(.top, 16)
    }
    
    private var welcomeText: some View {
        VStack(spacing: 8) {
            Text("Добро пожаловать")
                .font(.customfont(.semibold, fontSize: 26))
                .multilineTextAlignment(.center)
            Text("Введите номер телефона, чтобы войти или зарегистрироваться")
                .font(.customfont(.regular, fontSize: 14))
                .multilineTextAlignment(.center)
        }
        .padding(.top, 16)
    }
    
    private var phoneNumberInput: some View {
        HStack {
            Button {
                // действие при нажатии
            } label: {
                Text("+7")
                    .font(.customfont(.medium, fontSize: 18))
                    .foregroundColor(.black.opacity(0.7))
            }
            TextField("999 000 00 00", text: $viewModel.mobileNumber)
                .keyboardType(.phonePad)
                .frame(minWidth: 0, maxWidth: .infinity)
                
        }
        .frame(minHeight: 60)
        .background(Color.cardsColor)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .padding(.top, 16)
        
    }
    
    private var continueButton: some View {
        Button {
            viewModel.sendCode()
        } label: {
            Text("Продолжить")
                .font(.customfont(.semibold, fontSize: 20))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(minHeight: 60)
                .frame(maxWidth: .infinity)
                .background(Color.greenSecondary)
                .cornerRadius(24)
                .padding(.top, 16)
        }
        .disabled(viewModel.isLoadinButtonDisabled)
    }

    private var verificationCodeInput: some view {
        VStack {
            TextField("Введите код", text: $viewModel.verificationCode)
        }
        .keyboardType(.numberPad)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60)
        .background(Color.cardsColor)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .padding(.top, 16)
        
        
    
    }
    
    private var alternativeSignInText: some View {
        Text("или войти с помощью")
            .font(.customfont(.regular, fontSize: 14))
            .multilineTextAlignment(.center)
            .padding(.top, 16)
    }
    
    private var googleSignInButton: some View {
        signInButton(imageName: "google_logo", text: "Google", actiov: {})
    }
    
    private var vkSignInButton: some View {
            signInButton(imageName: "vk_logo", text: "Вконтакте", actiov: {})
    }
    
    
    
    private func signInButton(imageName: String, text: String, actiov: (() -> Void)?) -> some View {
        
            Button {
                
                
            } label: {
                HStack {
                    Spacer().padding()
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Text(text)
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundColor(.white)
                        .frame(minHeight: 60)
                        .frame(maxWidth: .infinity)
                    Spacer().padding()
                }
                .background(Color.gray50)
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .padding(.top, 16)
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








/*import SwiftUI

struct SignInView: View {
    @State var textMobile: String = ""
    
    var body: some View {
        ZStack {
            VStack {
            
                Image ("app_logoG")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.top, 16)
            
                Text("Добро пожаловать")
                    .font(.customfont(.semibold, fontSize: 26))
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
            
                Text("Введите номер телефона, чтобя войти или\nзарегистрироваться")
                    .font(.customfont(.regular, fontSize: 14))
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)

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
                .clipShape(.rect(cornerRadius: 25))
                .padding(.top,16)
                
                Button {
                  
                } label: {
                    Text("Продолжить")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                .background(Color.greenSecondary)
                .clipShape(.rect(cornerRadius: 25))
                .padding(.top, 16)
                
            Spacer()
                
                Text("или войти с помощью")
                    .font(.customfont(.regular, fontSize: 14))
                    .multilineTextAlignment(.center)
                    
                
                Button {
                  
                } label: {
                    Image("google_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Google")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                .background(Color.gray50)
                .clipShape(.rect(cornerRadius: 25))
                .padding(.top, 16)
                
                Button {
                  
                } label: {
                    Image("vk_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Text("Вконтакте")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                .background(Color.gray50)
                .clipShape(.rect(cornerRadius: 25))
                .padding(.top, 16 )
                    
            Spacer()
                    .frame(height: 40)
            }
            .padding(.horizontal, 20)
        }  
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        //.ignoresSafeArea()
    }
}

#Preview {
    SignInView()
}*/




