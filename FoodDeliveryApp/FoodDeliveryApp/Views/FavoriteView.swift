//
//  FavoriteView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

struct FavoriteView: View {
    @StateObject var favouriteVM = FavouriteViewModel.shared
   
    var body: some View {
        ZStack {
            
            ScrollView {
                
            }
            
            VStack {
                HStack {
                    Spacer()
                    
                    Text("Favorite")
                    
                    Spacer()
                }
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
