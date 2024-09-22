////
////  MainTabView.swift
////  FoodDeliveryApp
////
////  Created by Khusrav Safiev on 5/30/24.
////
//

import SwiftUI

struct MainTabView: View {
    
    // MARK: - Properties
    @StateObject var vm = HomeViewModel.shared
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            
            TabView(selection: $vm.tabSelection) {
                HomeView().tag(5)
                
                FavoriteView().tag(4)
                
                CartView().tag(3)
                
                ExploreView().tag(2)
                
                AccountView().tag(1)
                
            }
            .overlay(alignment: .bottom) {
                TabBarView(vm: vm)
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
