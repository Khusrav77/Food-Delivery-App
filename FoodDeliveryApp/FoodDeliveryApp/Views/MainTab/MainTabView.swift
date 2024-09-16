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
    
    private enum Tab: Int {
        case profile = 0, favorite, cart, search, home
    }
    // MARK: - Body
    var body: some View {
        ZStack {
            
            VStack {
                
                TabView(selection: $vm.selectTab) {
                    ExploreView().tag(Tab.profile.rawValue)
                   // FavoriteView().tag(Tab.favorite.rawValue)
                    ExploreView().tag(Tab.cart.rawValue)
                    ExploreView().tag(Tab.search.rawValue)
                    HomeView().tag(Tab.home.rawValue)
                  
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .onChange(of: vm.selectTab) { newValue in
                    debugPrint("Selected Tab: \(newValue)")
                       
                }
                
                tabBar
                
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
        
    }
    
    private var tabBar: some View {
        HStack {
            tabButton(title: "Профиль", icon: "profilesvg", tab: .profile)
            tabButton(title: "Любимые", icon: "favoritesvg", tab: .favorite)
            tabButton(title: "Корзина", icon: "cart_tab", tab: .cart)
            tabButton(title: "Найти", icon: "search_tab", tab: .search)
            tabButton(title: "Главная", icon: "home_tab", tab: .home)
        }
        .padding(.top, 10)
        .padding(.bottom, .bottomInsets)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: -2)
    }
    
//  MARK: FUNCTIONS
    
    private func tabButton(title: String, icon: String, tab: Tab, iconWidth: CGFloat = 24, iconHeight: CGFloat = 24) -> some View {
        TabButton(title: title, icon: icon, isSelect: vm.selectTab == tab.rawValue) {
            updateTabSelection(to: tab.rawValue)
        }
    }
    
    private func updateTabSelection(to index: Int) {
        DispatchQueue.main.async {
            withAnimation {
                vm.selectTab = index
            }
        }
    }
}


#Preview {
    MainTabView()
}













//import SwiftUI
//
//struct MainTabView: View {
//    
//    @StateObject var homeVM = HomeViewModel.shared
//    
//    var body: some View {
//        VStack {
//            TabView(selection: $homeVM.selectTab) {
//                HomeView().tag(4)
//                ExploreView().tag(3)
//                ExploreView().tag(2)
//                ExploreView().tag(1)
//                ExploreView().tag(0)
//            }
////            .onAppear {
////                UIScrollView.appearance().isScrollEnabled = false
////            }
//            .tabViewStyle(.page(indexDisplayMode: .never))
//            .onChange(of: homeVM.selectTab) { newValue in
//                debugPrint("Sel Tab : \(newValue)")
//            }
//            
//            HStack {
//                TabButton(title: "Профиль", icon: "account_tab",
//                    isSelect:homeVM.selectTab == 0) {
//                    DispatchQueue.main.async {
//                        withAnimation {
//                            homeVM.selectTab = 0
//                        }
//                    }
//                }
//                
//                TabButton(title: "Любимые", icon: "favorite_tab",
//                    isSelect:homeVM.selectTab == 1) {
//                    DispatchQueue.main.async {
//                        withAnimation {
//                            homeVM.selectTab = 1
//                        }
//                    }
//                }
//                
//                TabButton(title: "Карзина", icon: "cart_tab", 
//                    isSelect:homeVM.selectTab == 2) {
//                    DispatchQueue.main.async {
//                        withAnimation {
//                            homeVM.selectTab = 2
//                        }
//                    }
//                }
//                
//                TabButton(title: "Найти", icon: "search_tab", isSelect:homeVM.selectTab == 3) {
//                    DispatchQueue.main.async {
//                        withAnimation {
//                            homeVM.selectTab = 3
//                        }
//                    }
//                }
//                
//                TabButton(title: "Глвная", icon: "home_tab", isSelect:homeVM.selectTab == 4) {
//                    DispatchQueue.main.async {
//                        withAnimation {
//                            homeVM.selectTab = 4
//                        }
//                    }
//                }
//            }
//            .padding(.top, 10)
//            .padding(.bottom, .bottomInsets)
//            .padding(.horizontal, 10)
//            .background(Color.white)
//            .cornerRadius(15)
//            .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: -2)
//        
//        }
//        .navigationTitle("")
//        .navigationBarBackButtonHidden(true)
//        .navigationBarHidden(true)
//        .ignoresSafeArea()
//    
//    }
//    
//}
//
//#Preview {
//    MainTabView()
//}
