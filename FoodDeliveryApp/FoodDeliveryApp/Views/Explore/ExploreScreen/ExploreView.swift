//
//  ExploreView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct ExploreView: View {
    // MARK: - Properties
    @StateObject var exploreMV = ExploreViewModel.shared
    @State var textSearch: String = ""
    var columns = Array(repeating: GridItem(), count: 2)
    
    // MARK: - Body
    var body: some View {
        ZStack{
            VStack{
                SearchTextFild(title: "Найти продукты", text: $textSearch)
                
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns) {
                        ForEach(exploreMV.listCategories, id: \.id) {current in
                            NavigationLink(destination: ExploreItemView(vm: ExploreItemsViewModel(expItems:current))) { ExploreCategoryCell(category: current)
                                    .aspectRatio(0.95,contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, .topInsets)
            }
            .padding(.top, .topInsets + 10)
            .ignoresSafeArea()
        }
    }
}
    

#Preview {
        
    NavigationView {
        ExploreView()
    }
}
