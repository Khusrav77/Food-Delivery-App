//
//  ProductDetailView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var viewModel: ProductDetailViewModel = ProductDetailViewModel(products: ProductModel(dict: [:]))
    
   
    @State var counter = 0
    
   
    var body: some View {
        
        ZStack {
            
            ScrollView {
                ZStack {
                    
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: .screenWidth, height: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .shadow(color: .black.opacity(0.2), radius:5)
                
                    VStack {
                      Image("app_logoG")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .screenWidth * 0.8, height: .screenWidth * 0.8)
                            .padding(.top, .topInsets)
                            
                        
                        Text (viewModel.products.name)
                            .font(.customfont(.medium, fontSize: 24))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                          
                            Text(viewModel.products.unitName)
                                .frame(minWidth: 0, maxWidth: 50, alignment: .leading)
                            
                            Text("|")
                                .foregroundStyle(.gray)
                                .frame(minWidth: 0, maxWidth: 5, alignment: .leading)
                            
                            Text(viewModel.products.unitValue)
                                .frame(minWidth: 0, maxWidth: 25, alignment: .leading)
                        Spacer()
                        }
                        
                        Divider()
                        
                        Button {
                                
                            }label: {
                                HStack {
                                    Text(viewModel.products.detail)
                                        .font(.customfont(.regular, fontSize: 16))
                                        .foregroundStyle(Color.black)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 8)
                                    
                                    
                                    Image("down")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.gray)
                                        .padding(6)
                                        .background(Color.cardsColor)
                                        .clipShape(Circle())
                                        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                                
                            }
                                .padding(.vertical,16)
                        }
                    }
                    .padding(.horizontal, 16)
                
                }
                
            }
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                            .padding(6)
                            .background(Color.cardsColor)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                    }
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                            .padding(6)
                            .background(Color.cardsColor)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                    }
                    
                    
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .foregroundColor(.gray)
                            .padding(6)
                            .background(Color.cardsColor)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                    }
                    
                }
                .padding(.horizontal, 16)
                
                Spacer()
                HStack {
                    Spacer()
                    Text(viewModel.products.unitValue)
                        .font(.customfont(.medium, fontSize: 28))
                        .frame(alignment: .leading)
                        .padding(.horizontal,20)
                    Spacer()
                    CartButtont(counter: $counter , title: "Вкарзину", addedCart: {},isSelect: false, width: 200, height: 40)
                        
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 10)
                .padding(.bottom, .bottomInsets)
                .padding(.horizontal, 10)
                .background(Color.cardsColor)
                .cornerRadius(15)
                .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: -2)
                
                
                
                
            }
            .padding(.top, .topInsets)
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
    
}

#Preview {
    ProductDetailView(viewModel: ProductDetailViewModel(products: ProductModel(dict: [
        "offer_price": 100,
        "start_date": "2023-07-30T18:30:00.000Z",
        "end_date": "2023-08-29T18:30:00.000Z",
        "prod_id": 5,
        "cat_id": 1,
        "brand_id": 1,
        "type_id": 1,
        "name": "Organic Banana",
        "detail": "banana, fruit of the genus Musa, of the family Musaceae, one of the most important fruit crops of the world. The banana is grown in the tropics, and, though it is most widely consumed in those regions, it is valued worldwide for its flavour, nutritional value, and availability throughout the year",
        "unit_name": "кг",
        "unit_value": "1",
        "nutrition_weight": "200g",
        "price": 150,
        "image":"http://192.168.1.3:3001/img/product/202307310947354735xuruflIucc.png",
        "cat_name": "Frash Fruits & Vegetable",
        "type_name": "Pulses",
        "is_fav": 1
    
    
    ])))
    
}



private var tabBar: some View {
    HStack {
        Text("")
    }
    .padding(.top, 10)
    .padding(.bottom, .bottomInsets)
    .padding(.horizontal, 10)
    .background(Color.white)
    .cornerRadius(15)
    .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: -2)
}
