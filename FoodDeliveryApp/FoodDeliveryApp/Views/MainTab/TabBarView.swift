//
//  TabBarView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/17/24.
//

import SwiftUI

struct TabBarView: View {
    
    // MARK: - Properties
    @ObservedObject var vm: HomeViewModel
    @Namespace private var animationNamespase
    
    let tabBarItems: [(imege: String, title: String)] = [
        ("person", "Профиль"),
        ("heart", "Любимые"),
        ("cart", "Карзина"),
        ("square.grid.2x2", "Категории"),
        ("house", "Главня"),
    ]
    
    // MARK: - Body
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 80)
                .foregroundStyle(Color(.systemGray6))
                .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: -2)
            
            HStack {
                ForEach(0..<5) { index in
                    Button {
                        vm.tabSelection = index + 1
                    }label: {
                        VStack(spacing: 8) {
                           // Spacer()
                            Image(systemName: tabBarItems[index].imege)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            
                            Text(tabBarItems[index].title)
                                .font(.system(size: 12, weight: .regular, design: .rounded))
                            
                            if index + 1 == vm.tabSelection {
                                Capsule()
                                    .frame(height: 6)
                                    .foregroundStyle(.green)
                                    .matchedGeometryEffect(id: "tabSelationID", in: animationNamespase)
                                
                            } else {
                                Capsule()
                                    .frame(height: 6)
                                    .foregroundStyle(.clear)
                                
                            }
                        }
                        .foregroundStyle(index + 1 == vm.tabSelection ? Color.green : Color.gray)
                        .padding(6)
                    }
                }
            }
            .frame(height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview {
    
    TabBarView(vm: HomeViewModel())
}
