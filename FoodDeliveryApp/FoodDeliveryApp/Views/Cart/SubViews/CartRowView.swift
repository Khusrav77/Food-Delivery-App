//
//  CartRowView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/21/24.
//

import SwiftUI

struct CartRowView: View {
    // MARK: - Properties
    let product: MockProductModel
    
    // MARK: - Body
    var body: some View {
        
        ZStack (alignment: .trailing) {
            
            HStack(spacing: 20) {
//                if let url = URL(string: product.image) {
//                    CardImageView(url: url, width: 80, height: 80)
//                        .padding(8)
//                        .shadow(color: .black.opacity(0.1), radius: 8)
//                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(product.name)
                        .titleFont()
                    
                    HStack {
                        if let quantityinCart = product.quantityinCart {
                            let sum = quantityinCart * product.price
                            Text("\(sum) ₽/кг")
                                .titleFont()
                        }
                        
                    }
                    .padding(.horizontal,10)
                    .padding(.vertical,5)
                    .background(.gray.opacity(0.1))
                    .clipShape(Capsule())
                }
                Spacer()
            }
            
           // RemoteCartRowView(product: product)
            
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 20))
        .shadow(color: .black.opacity(0.1), radius: 8)
        
    }
}

#Preview {
    CartRowView(product: MockProductModel(id: 1, name: "Банан", category: "", price: 89))
}
