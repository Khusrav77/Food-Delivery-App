//
//  FavoriteRow.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/15/24.
//

import SwiftUI

struct FavoriteRow: View {
    @State var favProduct: ProductModel = ProductModel(dict: [:])
    @State private var counter = 0

    var body: some View {
        

            VStack {
                HStack{
                    Spacer()
                    Image (systemName: "heart")
                }
               
                Image("app_logoG")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100)
                    .padding(.top, 8)
                
                
                
                Text("Банан")
                    .font(.customfont(.regular, fontSize: 16))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                
                HStack {
                    Group {
                        
                        Text("1к")
                        Text("100$")
                        
                    }
                    .font(.customfont(.regular, fontSize: 16))
                   
                     Spacer()
                }
                
                Spacer()
                
                CartButtont(counter: $counter, title: "В корзину", isSelect: false, width: .infinity, height: 24)
                
            }
            .padding(8)
            .frame(width: 180, height: 230)
            .background(Color(hex: "F8F6F1"))
            .cornerRadius(16)
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(0.1)))
            
        }
    }


#Preview {
    FavoriteRow()
}
