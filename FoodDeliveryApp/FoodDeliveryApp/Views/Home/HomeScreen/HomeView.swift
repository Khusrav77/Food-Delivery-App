//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vmh = HomeViewModel()
   
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                // Header
                NavBarView(vm: vmh)

                switch vmh.navBarSelection {
                                case "Продукты":
                    ProductsView()
                                case "Готовое Еда":
                    ReadyMadeFoodView()
                                case "Здоровья":
                    HealthView()
                                default:
                    SpecialOffersView()
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
