//
//  DeliveryAddressView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct DeliveryAddressView: View {
    // MARK: - Properties
    @ObservedObject var vm: DeliveryAddressViewModel
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 15) {
                    ForEach(vm.address) { address in
                        AddresRowView(address: address, action: {})
                    }
                }
                .padding(.top)
                .padding()
                .navigationBarTitle("Мои адреса")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .font(.title3)
                                .foregroundStyle(.secondary)
                        }
                        .buttonStyle(.plain)
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        BackButton()
                    }
                }
            }
        }
    }
}

#Preview {
    DeliveryAddressView(vm: DeliveryAddressViewModel())
}
