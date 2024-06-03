//
//  ProductModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation


struct ProductModel: Identifiable, Equatable {
    var id: Int = 0
    var prodId: Int = 0
    var catId: Int = 0
    var brandId: Int = 0
    var typeId: Int = 0
    var name: String = ""
    var unitName: String = ""
    var unitValue: String = ""
    var nutritionWeight: String = ""
    var image: String = ""
    var detail: String = ""
    var catName: String = ""
    var typeName: String = ""
    var price: Int = 0
    var offerPrice: Int = 0
    var startDate: Date = Date()
    var endDate: Date = Date()
    var isFav: Bool = false
    
    init(dictionary: NSDictionary) {
        self.id = dictionary.value(forKey: "prod_id") as? Int ?? 0
        self.prodId = dictionary.value(forKey: "prod_id") as? Int ?? 0
        self.catId = dictionary.value(forKey: "cat_id") as? Int ?? 0
        self.brandId = dictionary.value(forKey: "brand_id") as? Int ?? 0
        self.typeId = dictionary.value(forKey: "type_id") as? Int ?? 0
        self.name = dictionary.value(forKey: "name") as? String ?? ""
        self.detail = dictionary.value(forKey: "detail") as? String ?? ""
        self.unitName = dictionary.value(forKey: "unit_name") as? String ?? ""
        self.unitValue = dictionary.value(forKey: "unit_name") as? String ?? ""
        self.nutritionWeight = dictionary.value(forKey: "nutrition_weight") as? String ?? ""
        self.image = dictionary.value(forKey: "image") as? String ?? ""
        self.catName = dictionary.value(forKey: "cat_name") as? String ?? ""
        self.typeName = dictionary.value(forKey: "type_name") as? String ?? ""
        self.price = dictionary.value(forKey: "price") as? Int ?? 0
        self.offerPrice = dictionary.value(forKey: "offer_price") as? Int ?? 0
        self.startDate = (dictionary.value(forKey: "start_date") as? String ?? "").stringDateToDate() ?? Date()
        self.endDate = (dictionary.value(forKey: "end_date") as? String ?? "").stringDateToDate() ?? Date()
        self.isFav = dictionary.value(forKey: "is_fav") as? Int ?? 0 == 1
    }
    
    static func == (lhs: ProductModel, rhs: ProductModel) -> Bool {
        return lhs.id == rhs.id
    }
    
}
