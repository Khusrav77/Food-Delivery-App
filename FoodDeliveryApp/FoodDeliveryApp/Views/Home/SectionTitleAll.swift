//
//  SectionTitleAll.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/1/24.
//

import SwiftUI

struct SectionTitleAll: View {
    
    // MARK: - Properties
    @State var title: String = "Title"
    var action : (() -> Void)?
    
    // MARK: - Body
    var body: some View {
        
        HStack {
            Text(title)
                .font(.customfont(.regular, fontSize: 18))
            
            Spacer()
            
            Button {
                action?()
            } label: {
                Image(systemName: "arrow.right")
                    .foregroundStyle(Color.black)
            }
        }
    }
}

#Preview {
    SectionTitleAll()
        .padding(20)
}
