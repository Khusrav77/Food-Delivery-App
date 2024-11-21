//
//  AddToCartButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

struct AddToCartButton: View {
    // MARK: - Properties
    let product: Product
    @State private var isExpanded: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            if isExpanded {
                HStack(spacing: 8) {
                    // decreaseQuantity
                    CustomRegulatorButton(name: "minus"){}
                
                    Spacer()
                    
                    // Количество и цена
                    VStack(spacing: 4) {
                        
                       // if let quantityinCart = product.quantityinCart {
                        Text("\(product.quantityInCart)")
                                .titleFont()
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.white)
                       // }
                        
//                        if let quantityinCart = product.quantityInCart {
//                        let sum = quantityinCart * product.price
//                            Text("\(sum) ₽")
//                                .font(.system(size: 14))
//                                .foregroundColor(.white.opacity(0.8))
//                        }
                    }
                    
                    Spacer()
                    
                    // increaseQuantity
                    CustomRegulatorButton(name: "plus") {}
                   // .padding(6)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 36)
                .padding(.horizontal, 12)
                .background(Color.green)
                .clipShape(Capsule())
                
            } else {
                // Сжатое состояние - только иконка корзины
                CustomRegulatorButton(name: "basket") {
                    withAnimation {
                            
                    }
                }
                .frame(width: 50, height: 36)
                .background(Color.green)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.gray.opacity(0.1)))
                .shadow(color: .black.opacity(0.1), radius: 5)
            }
        }
    }
}

#Preview {
    AddToCartButton(product: Product(id: 1, prodId: 1, typeId: 1, typeName: "", brandId: 1, brandName: "", name: "", detail: "", unitName: Unit.grams, unitValue: "", nutritionWeight: Nutrition.init(id: 1, nutritionName: "", nutritionValue: ""), quantityInCart: 1, image: "", price: Price(basePrice: 1, offerPrice: 1, itemPrice: 1, totalPrice: 3), isFav: false ))
}
