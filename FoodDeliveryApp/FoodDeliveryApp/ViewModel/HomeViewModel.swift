//
//  HomeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    // MARK: - Properties
    @Published var typeList: [TypeCategory] = []
    @Published var offerList: [Product] = []
    @Published var bestList: [Product] = []
    
    @Published var tabSelection: Int = 4
    @Published var navBarSelection: String = ""
    @Published var textSearch: String = ""
    
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    
    
   
    
    let navBarMenu = ["Продукты", "Готовое Еда", "Здоровья"]
   
    init() {
       
    }
    
    
    
    //MARK: - Service call
    
    func getProduct() {


    }
}

