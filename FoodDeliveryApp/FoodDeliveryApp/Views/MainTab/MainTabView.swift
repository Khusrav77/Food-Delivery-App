//
//  MainTabView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct MainTabView: View {
    
    @StateObject var homeVM = HomeViewModel.shared
    
    var body: some View {
        VStack {
            TabView(selection: $homeVM.selectTab) {
                HomeView().tag(0)
                ExploreView().tag(1)
                ExploreView().tag(2)
                ExploreView().tag(3)
                ExploreView().tag(4)
            }
            .onAppear {
                UIScrollView.appearance().isScrollEnabled = false
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: homeVM.selectTab) { newValue in
                debugPrint("Sel Tab : \(newValue)")
            }
            
            HStack {
                Button {
                    
                } label: {
                    VStack {
                        Image("")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        Text("Главная")
                            .font(.customfont(.semibold, fontSize: 14))
                    }
                }
                .foregroundColor(homeVM.selectTab == 0 ? .primaryText : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                
                Button {
                    
                } label: {
                    VStack {
                        Image("")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        Text("Найти")
                            .font(.customfont(.semibold, fontSize: 14))
                    }
                }
                .foregroundColor(homeVM.selectTab == 1 ? .primaryText : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                
                Button {
                    
                } label: {
                    VStack {
                        Image("")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        Text("Карзина")
                            .font(.customfont(.semibold, fontSize: 14))
                    }
                }
                .foregroundColor(homeVM.selectTab == 2 ? .primaryText : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                
                Button {
                    
                } label: {
                    VStack {
                        Image("")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        Text("Любимые")
                            .font(.customfont(.semibold, fontSize: 14))
                    }
                }
                .foregroundColor(homeVM.selectTab == 3 ? .primaryText : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                
                Button {
                    
                } label: {
                    VStack {
                        Image("")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        Text("Профиль")
                            .font(.customfont(.semibold, fontSize: 14))
                    }
                }
                .foregroundColor(homeVM.selectTab == 4 ? .primaryText : .primaryText)
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .padding(.bottom, .bottomInsets)
            .background(Color.white)
            .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: -2)
        
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
