//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct HomeView: View {
    // @StateObject var vm = HomeViewModel.shared
    @ObservedObject var vm = MockDataClass()
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                // Header
                NavBarView()
                
                SectionTitleAll(title: "Специалные предложения!") {
                    
                }
                .padding(.top)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(vm.mockProducts) { product in
                            ProductRowView(product: product)
                        }
                    }
                    .padding()
                }
                
                SectionTitleAll(title: "Больше всего покупают") {
                    
                }
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(vm.mockProducts) { product in
                            ProductRowView(product: product)
                            
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button{
                        
                    }label: {
                        HStack {
                            Image("location")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                            
                            Text("Санкт-Петербург")
                                .font(.customfont(.regular, fontSize: 14))
                                .foregroundStyle(.black)
                        }
                        
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button{
                        
                    }label: {
                        HStack {
                            Text("20-40 мин")
                                .font(.customfont(.regular, fontSize: 14))
                                .foregroundStyle(Color.greenPrimary)
                            
                            Image(systemName: "figure.outdoor.cycle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.yellow)
                        }
                        
                    }
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
