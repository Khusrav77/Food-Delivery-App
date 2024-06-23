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
                    ZStack(alignment: .top) {
                        Image("app_logoG")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 100)
                            .padding(.top, 8)
                        
                        HStack{
                            Spacer()
                            Image (systemName: "heart")
                                .padding(8)
                                .foregroundColor(.black.opacity(0.3))
                                .background(.white)
                                .clipShape(Circle())
                                .shadow(radius: 2)
                        }
                        
                    }
                    
                    VStack{
                        Text(model.name)
                            .font(.customfont(.semibold, fontSize: 16))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            Group {
                                
                                Text("1 к")
                                Text("100$")
                                
                            }
                            .font(.customfont(.regular, fontSize: 16))
                           
                             Spacer()
                        }
                    }
                    Spacer()
                   
                    CartButtont(counter: $counter, title: "В корзину", isSelect: false, width: .infinity, height: 24)
                    
                }
                
            }
            .padding(8)
            .frame(width: 180, height: 230)
            .background(Color(hex: "F8F6F1"))
            .cornerRadius(16)
            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black.opacity(0.1)))
            
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
