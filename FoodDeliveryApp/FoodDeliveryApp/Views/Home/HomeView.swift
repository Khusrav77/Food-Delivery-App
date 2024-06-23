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
                VStack(spacing: 16) {
                    // Header
                    HStack {
                        
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
                            .foregroundColor(.green)
                        
                        
                    }// header
                    .padding(.horizontal)
                    
                    CategoryListView()
                        
                    
                    SectionTitleAll(title: "Специалные предложения!") {
                            
                        }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (homeVM.offerList, id: \.id) {product in
                                ProductCell(model: product) {
                                    
                                }
                           }
                        }
                       
                        
                    }
                    
                    SectionTitleAll(title: "Больше всего покупают") {
                        
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (homeVM.bestLisr, id: \.id) {product in
                                ProductCell(model: product) {
                                    
                                }
                           }
                        }
                        
                    }
                    
                    
                    SectionTitleAll(title: "Готовая еда") {
                        
                    }
                    .padding(.horizontal)
                   
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (homeVM.listProduc, id: \.id) {product in
                                ProductCell(model: product) {
                                    
                                }
                           }
                        }
                        
                    }
                    
                    
                }
            }

        }
        
    }
}

#Preview {
    NavigationView {
        HomeView()
    }
}
