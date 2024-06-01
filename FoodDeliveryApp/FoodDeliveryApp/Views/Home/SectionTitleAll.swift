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
    var didTap : (() -> ())?
    
    var body: some View {
       
        HStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 18))

            Spacer()
            
            Text(titleAll)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.greenPrimary)
                
        }
    }
}

#Preview {
    SectionTitleAll()
        .padding(20)
}
