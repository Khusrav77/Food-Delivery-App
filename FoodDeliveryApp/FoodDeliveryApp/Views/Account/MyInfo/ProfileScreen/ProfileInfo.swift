//
//  ProfileInfo.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/26/24.
//

import SwiftUI

struct ProfileInfo: View {
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .foregroundStyle(.secondary)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("Your nament")
                    .font(.headline)
                
                Text("Your email")
                    .font(.subheadline)
            }
            Spacer()
            NavigationLink {
                DeteilProfileInfo()
            } label: {
                Image(systemName: "pencil")
            }

            
        }
        Divider()
    }
}

#Preview {
    ProfileInfo()
}
