//
//  ExploreView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct ExploreView: View {
    
    @StateObject var exploreMV = ExploreViewModel.shared
    @State var textSearch: String = ""
    
    var colums = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ZStack{
            
            VStack{
                SearchTextFild(placholder: "Найти продукты", text: $textSearch)
                
                
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: colums) {
                        ForEach(exploreMV.listProductCategory, id: \.id) {current in
                            NavigationLink(destination: ExploreItemView(itemVM: ExploreItemsViewModel(expItemsObj:current))) { ExploreCategoryCell(model: current)
                                    .aspectRatio(0.95,contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                    // .padding(.vertical)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, .topInsets + 10)
            }
            .ignoresSafeArea()
        }
    }
}
    

#Preview {
        
    NavigationView {
        ExploreView()
    }
}
