//
//  AddresRowView.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/22/24.
//

import SwiftUI

struct AddresRowView: View {
    // MARK: - Properties
    let address: Address
    let action: () -> Void
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Button {
                    action()
                }label: {
                    Image(systemName: address.isSelected ? "largecircle.fill.circle" : "circle")
                        .foregroundStyle(.green)
                }
                .buttonStyle(.borderless)
                
                Text(address.city)
                    .font(.subheadline)
                Rectangle()
                    .frame(width: 2, height: 15)
                    .foregroundStyle(.secondary.opacity(0.5))
                Text(address.name)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "pencil")
                    .foregroundStyle(.green)

            }
            Divider()
            
            HStack {
                Text(address.street)
                    .font(.subheadline)
                Text(address.houseNumber)
                    .font(.subheadline)
                Text(address.apartmentOrOffice ?? "")
                    .font(.subheadline)
                Text(address.entrance ?? "")
                    .font(.subheadline)
                Text(address.floor ?? "")
                    .font(.subheadline)
                Spacer()
            }
            
            Text(address.postalCode ?? "")
                .font(.subheadline)
            
        }
        .font(.headline)
        .padding()
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20).stroke(.gray.opacity(0.6), lineWidth: 0.5)
        }
        
    }
}

#Preview {
    AddresRowView(
        address: Address(
            id: 1,
            title: "Офис",
            name: "Офис",
            phone: "",
            city: "Санкт-Петербург",
            street: "Невский проспект",
            houseNumber: "88,",
            apartmentOrOffice: "Офис 456,",
            entrance: "Подъезд 5,",
            floor: "этаж 8",
            postalCode: "123456",
            comment: "оставить у двери", isSelected: false
        ),
        action: {}
    )
}
