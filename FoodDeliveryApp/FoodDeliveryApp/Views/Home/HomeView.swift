//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = HomeViewModel.shared
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
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
                    
                  
                    SectionTitleAll(title: "Специалные предложения!") {
                            
                        }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (vm.offerList, id: \.id) {product in
//                                ProductCellView(product: product) {
//                                    
//                                }
                           }
                        }
                       
                        
                    }
                    
                    SectionTitleAll(title: "Больше всего покупают") {
                        
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 12) {
                            ForEach (vm.bestLisr, id: \.id) {product in
//                                ProductCellView(product: product) {
//                                    
//                                }
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
