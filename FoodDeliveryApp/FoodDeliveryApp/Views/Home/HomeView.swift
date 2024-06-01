//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeVM = HomeViewModel.shared
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    HStack {
                        Spacer()
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                        
                        Text("Санкт-Петербург")
                            .font(.customfont(.regular, fontSize: 16))
                        
                        Spacer()
                        
                        Text("20-40 мин")
                            .font(.customfont(.regular, fontSize: 16))
                            .foregroundStyle(Color.green)
                        
                        Image("delivery_truc")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Spacer()
                    }
                    
                    HorizontalScrollMenu()
                    
//                   // SearchTextFild(placholder: "Найти продукты", text: $homeVM.textSearch)
//                        .padding(.horizontal, 20)
                    
                }
                .padding(.top, .topInsets)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
