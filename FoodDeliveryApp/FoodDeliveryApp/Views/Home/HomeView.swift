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
                            .font(.customfont(.regular, fontSize: 14))
                        
                        Spacer()
                        
                        Text("20-40 мин")
                            .font(.customfont(.regular, fontSize: 14))
                            .foregroundStyle(Color.green)
                        
                        Image(systemName: "figure.outdoor.cycle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.orange)
                        
                        Spacer()
                    }
                    
                    HorizontalScrollMenu()
                   
                    
                    SectionTitleAll(title: "Специалные предложения!", titleAll: "Все") {
                            
                        }
                        .padding(.horizontal, 16)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (homeVM.offerProduct, id: \.id) {current in
                                ProductCell(model: current) {
                                    
                                }
                           }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 16)
                    }
                    
                    SectionTitleAll(title: "Больше всего покупают", titleAll: "Все") {
                        
                    }
                    .padding(.horizontal, 16)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (homeVM.bestProduct, id: \.id) {current in
                                ProductCell(model: current) {
                                    
                                }
                           }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                    }
                    
                    
                    SectionTitleAll(title: "Готовая еда", titleAll: "Все") {
                        
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (homeVM.listProduc, id: \.id) {current in
                                ProductCell(model: current) {
                                    
                                }
                           }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                    }
                    .padding(.bottom, 8)
                    
                }
                .padding(.top, .topInsets)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationView {
        HomeView()
    }
}
