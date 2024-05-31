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
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                        
                        Text("Санкт-Петербург")
                            .font(.customfont(.regular, fontSize: 16))
                    }
                    SearchTextFild(placholder: "Search Store", text: $homeVM.textSearch)
                        .padding(.horizontal, 20)
                    
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
