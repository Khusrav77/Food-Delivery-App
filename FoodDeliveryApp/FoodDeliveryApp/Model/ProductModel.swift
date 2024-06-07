//
//  ProductModel.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation


struct ProductModel: Identifiable, Equatable {
   
   
    var id: Int
    var prodId: Int
    var catId: Int
    var brandId: Int
    var typeId: Int
    var name: String
    var unitName: String
    var unitValue: String
    var nutritionWeight: String
    var image: String
    var detail: String
    var catName: String
    var typeName: String
    var price: Int
    var offerPrice: Int
    var startDate: Date
    var endDate: Date
    var isFav: Bool
        
    enum CodingKeys: String, CodingKey {
        case id
        case prodId = "prod_id"
        case catId = "cat_id"
        case brandId = "brand_id"
        case typeId = "type_id"
        case name
        case unitName = "unit_name"
        case unitValue = "unit_value"
        case nutritionWeight = "nutrition_weight"
        case image
        case detail
        case catName = "cat_name"
        case typeName = "type_name"
        case price
        case offerPrice = "offer_price"
        case startDate = "start_date"
        case endDate = "end_date"
        case isFav = "is_fav"
    }
        
        // Custom decoding to handle date and isFav conversions
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
            
        self.id = try container.decode(Int.self, forKey: .id)
        self.prodId = try container.decode(Int.self, forKey: .prodId)
        self.catId = try container.decode(Int.self, forKey: .catId)
        self.brandId = try container.decode(Int.self, forKey: .brandId)
        self.typeId = try container.decode(Int.self, forKey: .typeId)
        self.name = try container.decode(String.self, forKey: .name)
        self.unitName = try container.decode(String.self, forKey: .unitName)
        self.unitValue = try container.decode(String.self, forKey: .unitValue)
        self.nutritionWeight = try container.decode(String.self, forKey: .nutritionWeight)
        self.image = try container.decode(String.self, forKey: .image)
        self.detail = try container.decode(String.self, forKey: .detail)
        self.catName = try container.decode(String.self, forKey: .catName)
        self.typeName = try container.decode(String.self, forKey: .typeName)
        self.price = try container.decode(Int.self, forKey: .price)
        self.offerPrice = try container.decode(Int.self, forKey: .offerPrice)
        
        let startDateString = try container.decode(String.self, forKey: .startDate)
        let endDateString = try container.decode(String.self, forKey: .endDate)
        self.startDate = startDateString.stringDateToDate() ?? Date()
        self.endDate = endDateString.stringDateToDate() ?? Date()
        
        let isFavInt = try container.decode(Int.self, forKey: .isFav)
        self.isFav = isFavInt == 1
    }
        
       
    static func == (lhs: ProductModel, rhs: ProductModel) -> Bool {
            return lhs.id == rhs.id
        }
}

    

