//
//  ExploreItemView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import SwiftUI

struct ExploreItemView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var itemVM = ExploreItemsViewModel(expItems: ExploreCategoryModel(dict: [:]))
   
    var colums = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15)
    ]
    
    
    var body: some View {
        ZStack{
            
            VStack{
                
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "arrowshape.turn.up.backward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                            .padding(6)
                            .background(Color.cardsColor)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                    }
                    
                    
                    Text("Фрукты и ягоды")
                        .font(.customfont(.medium, fontSize: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    
                    
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
                .padding(.top, .topInsets)
                .padding(.horizontal, 16)
                Spacer()
                
                ScrollView{
                    LazyVGrid(columns: colums) {
                        ForEach(itemVM.listItems, id: \.id) {
                            current in ProductCell(model: current)
                        }
                    }
                    
                }
            }
                        
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationView {
        ExploreItemView(itemVM: ExploreItemsViewModel(expItems: ExploreCategoryModel(dict: [
            "cat_id":"1",
            "cat_name":"Fruits & Vegetable",
            "image":"http://192.168.1.3:3001/img/category/20230726155407547qM5gSxkrCh.png",
            "color":"53B175"
            
        ])))
    }
}
