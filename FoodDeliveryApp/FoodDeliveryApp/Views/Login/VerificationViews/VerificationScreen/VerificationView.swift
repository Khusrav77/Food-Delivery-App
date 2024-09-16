//
//  Verification.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/8/24.
//

import SwiftUI

struct VerificationView: View {
    
    // MARK: - Properties
    @ObservedObject var vm : SignInViewModel
    @Environment(\.presentationMode) var present
   
    // MARK: - Body
    var body: some View {
     
        VStack {
            
            VStack {
                
                HStack{
                    
                    Button {
                        present.wrappedValue.dismiss()
                    }label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    
                    Text("Verify Phone")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding()
                
                Text("Код отправлена на номер\n\(vm.phoneNumber)")
                    .foregroundStyle(.gray)
                    .padding(.bottom)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 0)
                
                HStack(spacing: 15) {
                    
                    ForEach(0..<6, id: \.self) {index in
                       // displayng code....
                        CodeView(code: getCodeAtIndex(index: index))
                    }
                }
                .padding()
               
                Spacer(minLength: 0)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Отправить повтоно через:")
                        .foregroundStyle(.green)
                        .font(.customfont(.regular, fontSize: 16))
                })
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Text("Далее")
                        .foregroundStyle(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(vm.isCodeSent ? Color.green : Color.gray30)
                        .clipShape(Capsule())
                }
                .padding()
            }
            .frame(height: UIScreen.main.bounds.height / 1.8)
            .background(Color.white)
            .cornerRadius(24)
            
            Spacer()
        }
        .background(Color.cardsColor)
        .ignoresSafeArea(.all, edges: .bottom)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    // gatting Code At Each Index...
    
    func getCodeAtIndex(index: Int) -> String {
        if vm.verificationCode.count > index {
            let start = vm.verificationCode.startIndex
            let current = vm.verificationCode.index(start, offsetBy: index)
            return String(vm.verificationCode[current])
        }
        return ""
    }
}

#Preview {
    VerificationView(vm: SignInViewModel())
}

struct CodeView: View {
    var code: String
    
    var body: some View {
       
        VStack(spacing: 10) {
            Text(code)
                .foregroundStyle(Color.black)
                .font(.customfont(.medium, fontSize: 14))
                .frame(height: 45)
                
            Capsule()
                .fill(Color.black.opacity(0.5))
                .frame(height: 2)
            
        }
    }
}
