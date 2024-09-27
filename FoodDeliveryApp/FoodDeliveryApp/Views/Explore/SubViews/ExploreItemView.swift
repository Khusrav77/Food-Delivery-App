//
//  ExploreItemView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import SwiftUI

struct ExploreItemView: View {
    // MARK: - Properties
    @StateObject var vm = ExploreItemsViewModel(expItems: TypeCategory(id: 1, name: "", image: ""))
    @ObservedObject var vmCategory = ExploreViewModel()
    
    var colums = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
                SearchTextFild(title: "Найти", text: $vm.searchItem )
                LazyVGrid(columns: colums) {
                    ForEach(vmCategory.listCategories, id: \.id) {category in
                        ExploreCategoryCell(category: category )
                            .padding(.vertical, 4)
                    }
                }
            }
        }
        .padding(.horizontal, 16)
        .navigationTitle("Категории")
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    NavigationStack {
        ExploreItemView(vm: ExploreItemsViewModel(expItems: TypeCategory(id: 1, name: "", image: "")))
    }
}
