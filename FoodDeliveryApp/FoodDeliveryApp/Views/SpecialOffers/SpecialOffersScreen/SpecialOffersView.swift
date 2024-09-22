//
//  SpecialOffersView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct SpecialOffersView: View {
    @ObservedObject var vm = MockDataClass()
        
        var body: some View {
            VStack {
                SectionTitleAll(title: "Специальные предложения!") {
                    
                }
                .padding(.top)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(vm.mockProducts) { product in
                            ProductRowView(product: product)
                        }
                    }
                    .padding()
                }
                
                SectionTitleAll(title: "Больше всего покупают") {
                    
                }
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(vm.mockProducts) { product in
                            ProductRowView(product: product)
                        }
                    }
                    .padding()
                }
            }
        }
}

#Preview {
    SpecialOffersView()
}
