//
//  ExploreView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

struct ExploreView: View {
    // MARK: - Properties
    @StateObject var vm = ExploreViewModel.shared
    var columns = Array(repeating: GridItem(), count: 2)
    
    // MARK: - Body
    var body: some View {
        ZStack{
            VStack{
                SearchTextFild(title: "Найти продукты", text: $vm.searchItems)
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns) {
                        ForEach(vm.listCategories, id: \.id) {current in
                            NavigationLink(destination:ExploreCategoryCell(category: current)) {
                                    
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
