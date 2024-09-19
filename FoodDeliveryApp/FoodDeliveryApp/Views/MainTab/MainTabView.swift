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
                
                ProductView().tag(4)
                
                ExploreView().tag(3)
                
                ExploreView().tag(2)
                
                ExploreView().tag(1)
                
            }
            
            .overlay(alignment: .bottom) {
                TabBarView(vm: vm)
                    //.padding(.bottom, 8)
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
