//
//  SectionTitleAll.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/1/24.
//

import SwiftUI

struct SectionTitleAll: View {
    
    @State var title: String = "Title"
    @State var titleAll: String = "View All"
    var didTap : (() -> Void)?
    
    var body: some View {
       
        HStack {
            Text(title)
                .font(.customfont(.regular, fontSize: 18))
                .foregroundStyle(Color.greenPrimary)

            Spacer()
            
            Button {
                didTap?()
            } label: {
                Text(titleAll)
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundStyle(Color.greenPrimary)
            }
            
                
        }
    }
}

#Preview {
    SectionTitleAll()
        .padding(20)
}
