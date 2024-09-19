//
//  ProductView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

struct ProductView: View {
    @StateObject var vm = MockDataClass()
    var columnsTwo = Array(repeating: GridItem(), count: 2)
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                CategoryListView()
                LazyVGrid(columns: columnsTwo) {
                    ForEach(vm.mockProducts) { product in
                        ProductCardView(product: product)
                           
                    }
                }
                .padding(10)
            }
        }
    }
}

#Preview {
    ProductView()
}
