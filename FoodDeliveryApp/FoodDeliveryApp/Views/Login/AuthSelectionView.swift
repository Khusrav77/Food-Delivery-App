//
//  AuthSelectionView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct AuthSelectionView: View {
    
        @ObservedObject var viewModel: AuthViewModel

        var body: some View {
            VStack {
                Button(action: {
                    viewModel.sendVerificationCode()
                }) {
                    Text("Войти по номеру телефона")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                Button(action: {
                   // viewModel.signInWithGoogle()
                }) {
                    Text("Войти через Google")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    viewModel.signInWithVK()
                }) {
                    Text("Войти через ВКонтакте")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
    }


#Preview {
    AuthSelectionView()
}
