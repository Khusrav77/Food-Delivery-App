//
//  CartRowView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/21/24.
//

import SwiftUI

struct CartRowView: View {
    // MARK: - Properties
    let product: Product
    
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
                    
//                    HStack {
//                        if let quantity = product.quantityInCart {
//                            let sum = quantity * product.price
//                            Text("\(sum) ₽/кг")
//                                .titleFont()
//                        }
//                        
//                    }
//                    .padding(.horizontal,10)
//                    .padding(.vertical,5)
//                    .background(.gray.opacity(0.1))
//                    .clipShape(Capsule())
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
    CartRowView(product: Product(id: 1, prodId: 1, typeId: 1, typeName: "", brandId: 1, brandName: "", name: "", detail: "", unitName: Unit.grams, unitValue: "", nutritionWeight: Nutrition.init(id: 1, nutritionName: "", nutritionValue: ""), quantityInCart: 1, image: "", price: Price(basePrice: 1, offerPrice: 1, itemPrice: 1, totalPrice: 3), isFav: false ))
}
