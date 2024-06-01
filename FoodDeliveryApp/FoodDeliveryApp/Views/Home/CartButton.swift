//
//  CartButton.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/2/24.
//

import SwiftUI

struct CartButton: View {
    
    
        @State var counter: Int = 0
        var addedCart: (() -> Void)?
        var isSelect: Bool
        
        var body: some View {
            VStack {
                if counter == 0 {
                    Button(action: {
                        counter += 1
                        addedCart?()
                    }) {
                        Text("В корзину")
                            .font(.customfont(.regular, fontSize: 16))
                            .foregroundColor(.black.opacity(0.70))
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(4)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 5)
                } else {
                    HStack(spacing: 24) {
                        Button(action: {
                            if counter > 0 {
                                counter -= 1
                                addedCart?()
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .font(.system(size: 16))
                                .foregroundColor(.black.opacity(0.70))
                        }
                        
                        Text("\(counter)")
                            .font(.customfont(.regular, fontSize: 16))
                        
                        Button(action: {
                            counter += 1
                            addedCart?()
                        }) {
                            Image(systemName: "plus.circle")
                                .font(.system(size: 16))
                                .foregroundColor(.black.opacity(0.70))
                        }
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(4)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 5)
                }
            }
        }
    }

    struct CartButton_Previews: PreviewProvider {
        static var previews: some View {
            CartButton(isSelect: false)
                .padding(20)
                .previewLayout(.sizeThatFits)
        }
    }

                    
                  
         

                


