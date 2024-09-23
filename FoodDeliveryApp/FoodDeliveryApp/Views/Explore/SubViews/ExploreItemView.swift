//
//  ExploreItemView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import SwiftUI

struct ExploreItemView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var vm = ExploreItemsViewModel(expItems: ExploreCategory(id: 1, name: "", image: ""))
   
    var colums = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15)
    ]
    
    // MARK: - Body
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
                        ForEach(vm.listItems, id: \.id) {_ in
//                            current in ProductCellView(product:  current)
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
        ExploreItemView(vm: ExploreItemsViewModel(expItems: ExploreCategory(id: 1, name: "", image: "")))
    }
}
