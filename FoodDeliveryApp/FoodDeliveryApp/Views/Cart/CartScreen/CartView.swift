//
//  CartView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/21/24.
//

import SwiftUI
import FirebaseFirestore

struct CartView: View {
    // MARK: - Properties
//    @FirestoreQuery(collectionPath: "Shop") var items: [Product]
    @EnvironmentObject var vm: CartViewModel
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
//                ForEach(vm.cartItems.filter { $0.quantityInCart > 0 }) { item in
//                    ProductRowView(product: )
//                        .padding(.horizontal,10)
//                }
                
                ConfirmOrderButton(count: "\($vm.cartItems.count) товаров на сумму", total: "\($vm.total) ₽.")
            }
            .padding(.bottom, 50)
        }
        .navigationTitle("Cart")
        
        
    }
}

#Preview {
    CartView()
}
