//
//  ProductDetailView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var detailVM: ProductDetailViewModel
    
    init(prodObj: ProductModel) {
        _detailVM = StateObject(wrappedValue: ProductDetailViewModel(prodObj: prodObj))
    }
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
                            
                        
                        Text ("Яблока голден")
                            .font(.customfont(.medium, fontSize: 24))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                          
                            Text("300$")
                                .frame(minWidth: 0, maxWidth: 50, alignment: .leading)
                            
                            Text("|")
                                .foregroundStyle(.gray)
                                .frame(minWidth: 0, maxWidth: 5, alignment: .leading)
                            
                            Text("1кг")
                                .frame(minWidth: 0, maxWidth: 25, alignment: .leading)
                        Spacer()
                        }
                        
                        Divider()
                        
                        Button {
                                
                            }label: {
                                HStack {
                                    Text("Подробнее о товаре")
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
                    Text("399")
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
    let sampleProduct = ProductModel(
            id: 1,
            prodId: 1,
            catId: 1,
            brandId: 1,
            typeId: 1,
            name: "Sample Product",
            unitName: "kg",
            unitValue: "1",
            nutritionWeight: "100g",
            image: "sampleImage",
            detail: "Sample Detail",
            catName: "Category",
            typeName: "Type",
            price: 100,
            offerPrice: 80,
            startDate: Date(),
            endDate: Date(),
            isFav: false
        )
        return ProductDetailView(prodObj: sampleProduct)
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
