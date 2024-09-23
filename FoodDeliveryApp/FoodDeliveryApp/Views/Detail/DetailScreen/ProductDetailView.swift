//
//  ProductDetailView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var vm = ProductDetailViewModel()
    @State private var isExpanded: Bool = false
    @State private var counter = 0
    @State private var selectedMode: NutritionMode = .per100g
    let product: Product
    
    enum NutritionMode {
        case per100g, perPortion
    }
   // MARK: - Body
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
                        
                        
                        Text (product.name)
                            .font(.customfont(.medium, fontSize: 24))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            Text("\(product.price)₽")
                                .font(.headline)
                            
                            Capsule()
                                .fill(Color.gray20)
                                .frame(width: 2, height: 16)
                            
                            HStack(spacing: 0) {
                                Text(product.unitValue)
                                Text(product.unitName)
                            }
                           
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
                                        .fill(Color.gray20)
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

                    Spacer()
                    
                    isFavoriteButton(toggleAction: {})
                        .font(.title)
                }
                .padding(.horizontal, 16)
                
                Spacer()
                HStack {
                    Spacer()
                    Text("\(product.price)₽")
                        .font(.title)
                        .padding(.horizontal,20)
                        .padding(.vertical, 8)
                        .background(.background)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: 2)
                    
                    Spacer()
                    CartButtont(counter: $counter, title: "Вкорзину", width: 200, height: 45)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 10)
                .padding(.bottom, .bottomInsets)
                .padding(.horizontal, 10)
                .background(.background)
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
    ProductDetailView(product: Product(id: 1, prodId: 2, catId: 5, brandId: 7, typeId: 4, orderId: 5, quantityiInCart: 9, detail: "", name: "", unitName: "", unitValue: "", nutritionWeight: "", image: "", catName: "", typeName: "", offerPrice: 9, itemPrice: 7, totalPrice: 8, price: 99))
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
