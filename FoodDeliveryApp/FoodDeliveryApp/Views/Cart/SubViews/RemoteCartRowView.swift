//
//  RemoteCartRowView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/21/24.
//

import SwiftUI

struct RemoteCartRowView: View {
   //  MARK: - Properties
   // let product: MockProductModel
    @EnvironmentObject var vm: CartViewModel
        // MARK: - Body
        var body: some View {
            
            VStack(alignment: .trailing, spacing: 20) {
                // removeFromCart
                DeleteButton(name: "xmark") {
                   
                }
                
                HStack (spacing: 20){
                    // decreaseQuantity
                    CustomRemoteControlButton(name: "minus") {
                        
                    }
                    .padding(8)
                    
//                    if let quantityinCart = product.quantityinCart {
//                        Text("\(quantityinCart)")
//                            .titleFont()
//                    }
                    // increaseQuantity
                    CustomRemoteControlButton(name: "plus") {
                        
                    }
                    .padding(8)
                }
                .background(.white)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.1), radius: 8)
            }
            .padding()
        }
}

#Preview {
    RemoteCartRowView()
}
