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

struct ProductCardView: View {
    
    // MARK: - Properties
    let product: MockProductModel
    @State private var counter = 0
    var didAddCart: (() -> Void)?
    
    // MARK: - Body
    var body: some View {
        
        GeometryReader { geometry in
            let size = geometry.size
            
            VStack {
                VStack(alignment: .leading) {
                    
                    ZStack(alignment: .top) {
                        if let url = URL(string: product.imageName ?? "") {
                            CardImageView(url: url, width: size.width, height: size.height * 0.5)
                                .padding(.top,8)
                        } else {
                            ZStack {
                                Rectangle()
                                    .frame(height: 150)
                                    .foregroundStyle(.secondary.opacity(0.3))
                                    .clipShape(.rect(cornerRadius: 10))
                                
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundStyle(.secondary)
                                    .frame(height: 50)
                            }
                        }
                        
                        // New or Sale
                        HStack{
                            VStack {
                                Text("новинка")
                                    .font(.system(size: 12))
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 2)
                                    .padding(.trailing, 6)
                                    .padding(.leading, 8)
                                    .background(.purple.opacity(0.8))
                                    .clipShape(.rect(cornerRadius: 6))
                                Spacer()
                            }
                            
                            Spacer()
                            
                            // MARK: Button is favorite
                            VStack {
                                isFavoriteButton {
                                    
                                }
                                Spacer()
                            }
                            .padding(.trailing,8)
                            .padding(.top,6)
                        }
                        
                        // is Raiting
                        VStack{
                            Spacer()
                            // Raiting
                            HStack {
                                // Sale
                                Text("-25%")
                                    .titleFont()
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 2)
                                    .foregroundStyle(.white)
                                    .background(.red)
                                    .clipShape(Capsule())
                                
                                Spacer()
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                
                                Text("4.8")
                                    .subtitle()
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                }
                .frame(width: size.width, height: size.height * 0.6)
                
                
                // Product Information
                VStack(alignment: .leading) {
                    // Product Name
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .titleFont()
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.black)
                            .lineLimit(2)
                        
                        // Country
                        HStack {
                            Text(product.description ?? "")
                                .subtitle()
                                .foregroundStyle(.black)
                                .multilineTextAlignment(.leading)
                            
                            Image("")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 15, height: 14)
                        }
                        
                    }
                    .padding(.horizontal,10)
                    
                    ZStack(alignment: .bottomTrailing){
                        HStack{
                            VStack(alignment: .leading){
                                HStack {
                                    // Price
                                    Text("\(product.price)")
                                        .titleFont()
                                        .foregroundStyle(.black)
                                        .multilineTextAlignment(.leading)
                                    
                                    Text("₽/кг")
                                        .subtitle()
                                        .foregroundStyle(.black)
                                        .multilineTextAlignment(.leading)
                                }
                                
                                Text("1000")
                                    .subtitle()
                                    .foregroundStyle(.gray)
                                    .strikethrough()
                                    
                                
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 10)
                        .padding(.bottom,6)
                        
                        AddToCartButton(product: product)
                            .padding(6)
                    }
                    .frame(height: 50)
                }
            }
        }
        .frame(height: .screenWidth * 0.7)
        .background(.white)
        .clipShape(.rect(cornerRadius: 20))
        .shadow(color: .black.opacity(0.1), radius: 8)
        
    }
    
}


#Preview {
    ProductCardView(product: MockProductModel(id: 1, name: "Банан", category: "", price: 345, description: "bjgbjgnbjgn"))
    
}
