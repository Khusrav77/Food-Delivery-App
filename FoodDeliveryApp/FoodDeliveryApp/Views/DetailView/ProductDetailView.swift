//
//  ProductDetailView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var vm: ProductDetailViewModel = ProductDetailViewModel(products: ProductModel(dict: [:]))
    
    @State private var isExpanded: Bool = false
    @State private var counter = 0
    @State private var selectedMode: NutritionMode = .per100g
    
    enum NutritionMode {
        case per100g, perPortion
    }
   
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
                        
                        
                        Text (vm.products.name)
                            .font(.customfont(.medium, fontSize: 24))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            
                            Text(vm.products.unitValue)
                            
                            Text(vm.products.unitName)
                            
                            Capsule()
                                .fill(Color.black.opacity(0.5))
                                .frame(width: 2, height: 16)
                            
                            Text("\(vm.products.price)₽")
                            
                            Spacer()
                        }
                        
                        Divider()
                        
                        Button {
                            withAnimation {
                                isExpanded.toggle()
                            }
                        }label: {
                            
                            HStack {
                                
                                Text("Подробнее о товаре")
                                    .font(.customfont(.regular, fontSize: 16))
                                    .foregroundStyle(Color.black)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.vertical, 8)
                                
                                
                                Image(systemName: isExpanded ? "chevron.up" :  "chevron.down")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.gray)
                                    .padding(6)
                                
                                
                                
                            }
                            .padding(.vertical,16)
                            
                        }
                        if isExpanded {
                            VStack(alignment: .leading, spacing: 8) {
                                HStack{
                                    Button{
                                        selectedMode = .per100g
                                    }label: {
                                        Text("На 100 г")
                                            .font(.headline)
                                            .foregroundStyle(selectedMode == .per100g ? .black : .gray)
                                    }
                                    
                                    Capsule()
                                        .fill(Color.black.opacity(0.5))
                                        .frame(width: 2, height: 16)
                                    
                                    Button{
                                        selectedMode = .perPortion
                                    }label: {
                                        Text("На порцию")
                                            .font(.headline)
                                            .foregroundStyle(selectedMode == .perPortion ? .black: .gray)
                                    }
                                    
                                }
                                if selectedMode == .per100g {
                                    HStack(spacing: 8){
                                        
                                            VStack(alignment: .leading){
                                                Text("96")
                                                    .font(.headline)
                                                Text("ккал")
                                            }
                                            VStack(alignment: .leading){
                                                Text("9.8")
                                                    .font(.headline)
                                                Text("белки")
                                            }
                                            VStack(alignment: .leading){
                                                Text("1.2")
                                                    .font(.headline)
                                                Text("жиры")
                                            }
                                            VStack(alignment: .leading){
                                                Text("11.9")
                                                    .font(.headline)
                                                Text("углеводы")
                                            }
                                        
                                        
                                    }
                                }else {
                                    HStack(spacing: 8){
                                        
                                            VStack(alignment: .leading){
                                                Text("120")
                                                    .font(.headline)
                                                Text("ккал")
                                            }
                                            VStack(alignment: .leading){
                                                Text("13")
                                                    .font(.headline)
                                                Text("белки")
                                            }
                                            VStack(alignment: .leading){
                                                Text("2")
                                                    .font(.headline)
                                                Text("жиры")
                                            }
                                            VStack(alignment: .leading){
                                                Text("14.9")
                                                    .font(.headline)
                                                Text("углеводы")
                                            }
                                        
                                        
                                    }
                                }
                                
                                
                               
                                Divider()
                                
                                Text("Описания")
                                    .font(.headline)
                                
                                Text("В молоке, которое взяли для этого сыра, много белка, поэтому у моцареллы такая нежная текстура. Нарезайте в салат, к томатам или просто съешьте с оливковым маслом и бальзамическим уксусом.")
                                
                                Text("Состав")
                                    .font(.headline)
                                Text("Молоко коровье пастеризованное нормализованное, заквасочные термофильные культуры прямого внесения, молокосвертывающий ферментный препарат животного происхождения, рассол (вода питьевая, соль пищевая морская).")
                                    .font(.body)
                                
                                Text("Срок годности, условия хранения")
                                    .font(.headline)
                                
                                Text("21 д., от 0С° до 6С°")
                                    .font(.body)
                                
                                Text("Производитель, страна")
                                    .font(.headline)
                                
                                Text("ООО «Сыроварня «Волжанка», Россия")
                                    .font(.body)
                                
                                Text("Бренд")
                                    .font(.headline)
                                
                                Text("Россия")
                                    .font(.body)
                                
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    
                }
            }
            .padding(.bottom, 90)
            VStack {
                HStack {
                    BackButton()
//                    Button {
//                        
//                    } label: {
//                        Image(systemName: "square.and.arrow.up")
//                            .padding(12)
//                            .foregroundColor(.black.opacity(0.3))
//                            .background(.white)
//                            .clipShape(Circle())
//                            .shadow(radius: 2)                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .padding(12)
                            .foregroundColor(.black.opacity(0.3))
                            .background(.white)
                            .clipShape(Circle())
                            .shadow(radius: 2)
                          
                    }
                    
                    
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .padding(12)
                            .foregroundColor(.black.opacity(0.3))
                            .background(.white)
                            .clipShape(Circle())
                            .shadow(radius: 2)
                            
                    }
                    
                }
                .padding(.horizontal, 16)
                
                Spacer()
                HStack {
                    Spacer()
                    Text("\(vm.products.price)₽")
                        .font(.customfont(.medium, fontSize: 28))
                        .frame(alignment: .leading)
                        .padding(.horizontal,20)
                    Spacer()
                    CartButtont(counter: $counter , title: "В карзину", addedCart: {},isSelect: true, width: 200, height: 40)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 10)
                .padding(.bottom, .bottomInsets)
                .padding(.horizontal, 10)
                .background(Color.cardsColor)
                .cornerRadius(16)
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
    ProductDetailView(vm: ProductDetailViewModel(products: ProductModel(dict: [
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
