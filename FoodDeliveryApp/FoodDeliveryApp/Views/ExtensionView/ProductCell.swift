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
    
    @State var model: ProductModel = ProductModel(dict: [:])
    
    @State private var counter = 0
    
    var didAddCart: (() -> Void)?
    
    var body: some View {
        
        NavigationLink {
            ProductDetailView(viewModel: ProductDetailViewModel(products: model))
       
        }label: {
           
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
                    Text("")
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
}


#Preview {
    ProductCell(model: ProductModel(dict: [
        "offer_price": 2.49,
        "start_date": "2023-07-30T18:30:00.000Z",
        "end_date": "2023-08-29T18:30:00.000Z",
        "prod_id": 5,
        "cat_id": 1,
        "brand_id": 1,
        "type_id": 1,
        "name": "Organic Banana",
        "detail": "banana, fruit of the genus Musa, of the family Musaceae, one of the most important fruit crops of the world. The banana is grown in the tropics, and, though it is most widely consumed in those regions, it is valued worldwide for its flavour, nutritional value, and availability throughout the year",
        "unit_name": "pcs",
        "unit_value": "7",
        "nutrition_weight": "200g",
        "price": 2.99,
        "image":"http://192.168.1.3:3001/img/product/202307310947354735xuruflIucc.png",
        "cat_name": "Frash Fruits & Vegetable",
        "type_name": "Pulses",
        "is_fav":"1"
    ]))
}
