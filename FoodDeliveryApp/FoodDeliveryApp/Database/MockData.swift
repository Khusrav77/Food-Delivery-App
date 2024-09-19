//
//  MockDataJson.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import Foundation


struct MockProductModel: Identifiable, Equatable {
    
    var id: Int
    var name: String
    var category: String
    var price: Int
    var description: String?
    var imageName: String?
    var quantityinCart: Int?
    
    
    static func == (lhs: MockProductModel, rhs: MockProductModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}











                



















let mockData: [[String: Any]] = [
   
    [
        "id": 1,
        "prodId": 101,
        "catId": 1,
        "brandId": 10,
        "typeId": 5,
        "name": "Apple",
        "unitName": "kg",
        "unitValue": "1",
        "nutritionWeight": "100",
        "image": "apple_image",
        "detail": "Fresh and juicy apples",
        "catName": "Fruits",
        "typeName": "Food",
        "price": 100,
        "offerPrice": 90,
        "startDate": "2024-06-10T12:00:00Z",
        "endDate": "2024-07-10T12:00:00Z",
        "isFav": false
],
    [
        "id": 2,
        "prodId": 102,
        "catId": 2,
        "brandId": 11,
        "typeId": 5,
        "name": "Banana",
        "unitName": "kg",
        "unitValue": "1",
        "nutritionWeight": "100",
        "image": "banana_image",
        "detail": "Fresh bananas",
        "catName": "Fruits",
        "typeName": "Food",
        "price": 80,
        "offerPrice": 70,
        "startDate": "2024-06-10T12:00:00Z",
        "endDate": "2024-07-10T12:00:00Z",
        "isFav": true
    
  ]
]

    

