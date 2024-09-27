//
//  HomeViewModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 5/30/24.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    // MARK: - Properties
    static var shared: HomeViewModel = HomeViewModel()
    
    @Published var navBarSelection: String = ""
    @Published var tabSelection: Int = 4
    @Published var textSearch: String = ""
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var typeList: [TypeCategory] = []
    @Published var offerList: [Product] = []
    @Published var bestList: [Product] = []
    
     
    
    let navBarMenu = ["Продукты", "Готовое Еда", "Здоровья"]
   
    init() {
        getProduct()
    }
    
    
    
    //MARK: - Service call
    
    func getProduct() {


    }
}

