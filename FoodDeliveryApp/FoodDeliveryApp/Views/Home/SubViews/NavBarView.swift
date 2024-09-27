//
//  NavBarView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import SwiftUI

import SwiftUI

struct NavBarView: View {
    
    // MARK: - Properties
    @ObservedObject var vm: HomeViewModel
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 12) {
            ForEach(vm.navBarMenu, id: \.self) { item in
                Button {
                    vm.navBarSelection = item
                } label: {
                    Text(item)
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                        .foregroundStyle(item == vm.navBarSelection ? Color.orange : Color.black.opacity(0.5))
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .background(item == vm.navBarSelection ? Color.white : Color.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .black.opacity(0.15), radius: 3, x: 0, y: 2)
                }
            }
        }
    }
}

#Preview {
    NavBarView(vm: HomeViewModel())
}

