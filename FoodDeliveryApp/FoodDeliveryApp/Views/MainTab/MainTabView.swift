////
////  MainTabView.swift
////  FoodDeliveryApp
////
////  Created by Khusrav Safiev on 5/30/24.

import SwiftUI

struct MainTabView: View {
    
    // MARK: - Properties
    @StateObject var vm = HomeViewModel.shared
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            TabView(selection: $vm.tabSelection) {
                HomeView().tag(5)
                
                ExploreView().tag(4)
                
                CartView().tag(3)
                
                FavoriteView().tag(2)
                
                AccountView().tag(1)
                
            }
            .ignoresSafeArea()
            .overlay(alignment: .bottom) {
                TabBarView(vm: vm)
                    .padding()
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}


#Preview {
    MainTabView()
}
