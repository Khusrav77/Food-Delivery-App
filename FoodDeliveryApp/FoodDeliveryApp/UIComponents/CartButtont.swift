//
//  CartButtontest.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/5/24.
//

import SwiftUI

struct CartButtont: View {
    
    // MARK: - Properties
    @Binding var counter: Int
    @State var title : String
    var addedCart: (() -> Void)?
    var isSelect: Bool
    var width: CGFloat
    var height: CGFloat
    
    // MARK: - Body
    var body: some View {
        VStack {
            if counter == 0 {
                Button{
                    counter += 1
                    addedCart?()
                }label: {
                    Text(title)
                        .font(.customfont(.regular, fontSize: 16))
                        .foregroundColor(.black.opacity(0.70))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(width: width, height: height)
                .padding(4)
                .background(Color.white)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.gray20, lineWidth: 0.5))
                .shadow(color: .black.opacity(0.1), radius: 8, x: 5, y: 5)
            } else {
                HStack(spacing: 16) {
                    Button {
                        if counter > 0 {
                            counter -= 1
                            addedCart?()
                        }
                    }label: {
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black.opacity(0.70))
                    }
                    .padding(8)
                    
                    Spacer()
                    
                    Text("\(counter)")
                        .font(.customfont(.regular, fontSize: 16))
                    
                    Spacer()
                    
                    Button {
                        counter += 1
                        addedCart?()
                    }label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black.opacity(0.70))
                    }
                    .padding(8)
                }
                .frame(width: width, height: height)
                .padding(4)
                .background(Color.white)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.green, lineWidth: 0.5))
                .shadow(color: .green.opacity(0.1), radius: 8, x:  5, y: 8)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    @State static var counter = 0
    static var previews: some View {
        CartButtont(counter: $counter, title: "В карзину", isSelect: false, width: 300, height: 50)
    }
    
}