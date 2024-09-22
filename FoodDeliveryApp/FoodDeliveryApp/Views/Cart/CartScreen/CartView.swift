//
//  CartView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/21/24.
//

import SwiftUI

struct CartView: View {
    // MARK: - Properties
      // @FirestoreQuery(collectionPath: "Shop") private var items: [Product]
    @EnvironmentObject var vm: CartViewModel
       // MARK: - Body
       var body: some View {
           
           ZStack(alignment: .bottom){
               VStack {
//                   ScrollView(.vertical, showsIndicators: false){
//                       ForEach(items.filter { $0.quantityinCart ?? 0 > 0 }) { item in
//                           ProductRowView(product: item)
//                               .padding(.horizontal,10)
//                       }
//                   }
                  // .padding(.bottom, 50)
               }
               .navigationTitle("Cart")
               
//               ConfirmOrderButton(count: "\(vm.cartItemCount) товаров на сумму", total: "\(vm.totalPrice) ₽.")
           }
       }
}

#Preview {
    CartView()
}
