//
//  ExploreCategoryCell.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/9/24.
//

import SwiftUI

struct ExploreCategoryCell: View {
//        var productImage: String
//        var productPrice: String
//        var productName: String
//        var productWeight: String
    
    @State var model: ExploreCategoryModel = ExploreCategoryModel(dict: [:])
    
    @State private var counter = 0
    
        var didAddCart: (() -> Void)?
        
        var body: some View {
            
            ZStack {
                
                VStack {
                    HStack {
                     Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                                .foregroundColor(.gray)
                                .padding(6)
                                .background(Color.cardsColor)
                                .clipShape(Circle())
                                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                        }
                        
                    }
                    Image("")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 100)
                    
                    
                    Spacer()
                    Text(model.name)
                        .font(.customfont(.regular, fontSize: 16))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        Text("")
                            .font(.customfont(.regular, fontSize: 16))
                            .foregroundStyle(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Text("")
                            .font(.customfont(.medium, fontSize: 16))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    CartButtont(counter: $counter, title: "В корзину", isSelect: false, width: .infinity, height: 24)
                    
                }
                .padding(8)
                .background(Color(hex: "F8F6F1"))
                .frame(width: 180, height: 230)
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(0.1)))
            }
        }
    }
    

    #Preview {
        ExploreCategoryCell(model: ExploreCategoryModel(dict: [
            "cat_id":1,
            "cat_name":"Pulses",
            "image":"http://192.168.1.3:3001/img/type/202307261610181018aVOpgmY1W1.png" ,
            "color":"F8A44C"
        ]))
        
    }
