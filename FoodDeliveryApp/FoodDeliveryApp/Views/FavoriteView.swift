//
//  FavoriteView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

struct FavoriteView: View {
    @StateObject var favoriteVM = FavoriteViewModel.shared
   
    var body: some View {
        ZStack {
            
            ScrollView {
                
            }
            
            VStack {
                HStack {
                    Spacer()
                    
                    Text("Favorite")
                        .font(.customfont(.semibold, fontSize: 20))
                        .frame(height: 46)
                    
                    Spacer()
                }
                .padding(.top, .topInsets)
                .background(.white)
                .shadow(color: .black.opacity(0.2), radius: 2)
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
    FavoriteView()
}
