////
////  ProductCell.swift
////  FoodDeliveryApp
////
////  Created by Khusrav Safiev on 6/1/24.
////
//
//import SwiftUI
//

import SwiftUI

struct ProductCell: View {
    var productImage: String
    var productPrice: String
    var productName: String
    var productWeight: String
    
    var body: some View {
        VStack {
            Image(productImage)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 100)
            
            Spacer()
            
            Text(productPrice)
                .font(.customfont(.medium, fontSize: 16))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text(productName)
                .font(.customfont(.regular, fontSize: 16))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text(productWeight)
                .font(.customfont(.regular, fontSize: 16))
                .foregroundStyle(.gray)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            CartButton(isSelect: false)
                
        }
        .padding(8)
        .background(Color(hex: "F8F6F1"))
        .frame(width: 180, height: 230)
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(0.1)))
    }
}

var productCell = ProductCell(productImage: "apple_image", productPrice: "$139", productName: "Яблоки голден", productWeight: "1 кг")

#Preview {
    ProductCell(
        productImage: "apple_image",
        productPrice: "$139",
        productName: "Яблоки голден",
        productWeight: "1 кг"
    )
}














//struct ProductCell: View {
//    var body: some View {
//        
//        VStack {
//            
//            Image("")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 80, height: 100)
//            
//            Spacer()
//            
//            Text("$139")
//                .font(.customfont(.medium, fontSize: 16))
//                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//            
//            Text("Яблоки голден")
//                .font(.customfont(.regular, fontSize: 16))
//                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//            
//            Text("1 кг")
//                .font(.customfont(.regular, fontSize: 16))
//                .foregroundStyle(.gray)
//                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//            
//            Spacer()
//            
//            Button {
//                
//            } label: {
//                Text("В карзину")
//                    .font(.customfont(.regular, fontSize: 16))
//                    .foregroundStyle(.black.opacity(0.70))
//            }
//            .frame(minWidth: 0, maxWidth: .infinity)
//            .padding(4)
//            .background(.white)
//            .cornerRadius(12)
//            .shadow(color: .black.opacity(0.1), radius: 5)
//            
//                
//            
//        }
//        .padding(8)
//        .background(Color(hex: "F8F6F1"))
//        .frame(width: 180, height: 230)
//        .cornerRadius(16)
//        .overlay(RoundedRectangle(cornerRadius: 16)
//            .stroke(Color.black.opacity(0.1)))
//        
//        
//    }
//}
//
//#Preview {
//    ProductCell()
//}
