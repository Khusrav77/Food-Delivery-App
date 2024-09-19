//
//  AddToCartButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

struct AddToCartButton: View {
    let product: MockProductModel

    @State private var isExpanded: Bool = false
    
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
                        Text("\(product.quantityinCart ?? 0)")
                                .titleFont()
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.white)
                      //  }
                        
                        if let quantityinCart = product.quantityinCart {
                        let sum = quantityinCart * product.price
                            Text("\(sum) ₽")
                                .font(.system(size: 14))
                                .foregroundColor(.white.opacity(0.8))
                        }
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
    AddToCartButton(product: MockProductModel(id: 1, name: "Банан", category: "фрукты", price: 199))
}
