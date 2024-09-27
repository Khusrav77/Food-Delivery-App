//
//  Untitled.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/27/24.
//
import Foundation

struct ProductMockData {
    // Массивы продуктов для каждой категории
    static let fruits: [Product] = [
        Product(id: 1, prodId: 101, catId: 1, brandId: 10, typeId: 100, orderId: 1, quantityInCart: 0, detail: "Fresh apples", name: "Apple", unitName: "kg", unitValue: "1", nutritionWeight: "200g", image: "apple.jpg", catName: "Fruits", typeName: "Fruit", offerPrice: 5, itemPrice: 5, totalPrice: 0, price: 5),
        Product(id: 2, prodId: 102, catId: 1, brandId: 10, typeId: 100, orderId: 1, quantityInCart: 0, detail: "Fresh bananas", name: "Banana", unitName: "kg", unitValue: "1", nutritionWeight: "180g", image: "banana.jpg", catName: "Fruits", typeName: "Fruit", offerPrice: 3, itemPrice: 3, totalPrice: 0, price: 3),
        Product(id: 3, prodId: 103, catId: 1, brandId: 10, typeId: 100, orderId: 1, quantityInCart: 0, detail: "Fresh oranges", name: "Orange", unitName: "kg", unitValue: "1", nutritionWeight: "250g", image: "orange.jpg", catName: "Fruits", typeName: "Fruit", offerPrice: 6, itemPrice: 6, totalPrice: 0, price: 6)
    ]
    
    static let berries: [Product] = [
        Product(id: 4, prodId: 201, catId: 2, brandId: 11, typeId: 101, orderId: 2, quantityInCart: 0, detail: "Fresh strawberries", name: "Strawberry", unitName: "box", unitValue: "0.5", nutritionWeight: "100g", image: "strawberry.jpg", catName: "Berries", typeName: "Berry", offerPrice: 8, itemPrice: 8, totalPrice: 0, price: 8),
        Product(id: 5, prodId: 202, catId: 2, brandId: 11, typeId: 101, orderId: 2, quantityInCart: 0, detail: "Fresh blueberries", name: "Blueberry", unitName: "box", unitValue: "0.5", nutritionWeight: "90g", image: "blueberry.jpg", catName: "Berries", typeName: "Berry", offerPrice: 10, itemPrice: 10, totalPrice: 0, price: 10),
        Product(id: 6, prodId: 203, catId: 2, brandId: 11, typeId: 101, orderId: 2, quantityInCart: 0, detail: "Fresh raspberries", name: "Raspberry", unitName: "box", unitValue: "0.5", nutritionWeight: "80g", image: "raspberry.jpg", catName: "Berries", typeName: "Berry", offerPrice: 9, itemPrice: 9, totalPrice: 0, price: 9)
    ]

    static let vegetables: [Product] = [
        Product(id: 7, prodId: 301, catId: 3, brandId: 12, typeId: 102, orderId: 3, quantityInCart: 0, detail: "Fresh carrots", name: "Carrot", unitName: "kg", unitValue: "1", nutritionWeight: "150g", image: "carrot.jpg", catName: "Vegetables", typeName: "Vegetable", offerPrice: 2, itemPrice: 2, totalPrice: 0, price: 2),
        Product(id: 8, prodId: 302, catId: 3, brandId: 12, typeId: 102, orderId: 3, quantityInCart: 0, detail: "Fresh tomatoes", name: "Tomato", unitName: "kg", unitValue: "1", nutritionWeight: "200g", image: "tomato.jpg", catName: "Vegetables", typeName: "Vegetable", offerPrice: 4, itemPrice: 4, totalPrice: 0, price: 4),
        Product(id: 9, prodId: 303, catId: 3, brandId: 12, typeId: 102, orderId: 3, quantityInCart: 0, detail: "Fresh cucumbers", name: "Cucumber", unitName: "kg", unitValue: "1", nutritionWeight: "180g", image: "cucumber.jpg", catName: "Vegetables", typeName: "Vegetable", offerPrice: 3, itemPrice: 3, totalPrice: 0, price: 3)
    ]

    static let meat: [Product] = [
        Product(id: 10, prodId: 401, catId: 4, brandId: 13, typeId: 103, orderId: 4, quantityInCart: 0, detail: "Fresh chicken breast", name: "Chicken Breast", unitName: "kg", unitValue: "1", nutritionWeight: "500g", image: "chicken_breast.jpg", catName: "Meat", typeName: "Meat", offerPrice: 12, itemPrice: 12, totalPrice: 0, price: 12),
        Product(id: 11, prodId: 402, catId: 4, brandId: 13, typeId: 103, orderId: 4, quantityInCart: 0, detail: "Fresh beef steak", name: "Beef Steak", unitName: "kg", unitValue: "1", nutritionWeight: "700g", image: "beef_steak.jpg", catName: "Meat", typeName: "Meat", offerPrice: 25, itemPrice: 25, totalPrice: 0, price: 25),
        Product(id: 12, prodId: 403, catId: 4, brandId: 13, typeId: 103, orderId: 4, quantityInCart: 0, detail: "Fresh lamb chops", name: "Lamb Chops", unitName: "kg", unitValue: "1", nutritionWeight: "600g", image: "lamb_chops.jpg", catName: "Meat", typeName: "Meat", offerPrice: 20, itemPrice: 20, totalPrice: 0, price: 20)
    ]

    static let fish: [Product] = [
        Product(id: 13, prodId: 501, catId: 5, brandId: 14, typeId: 104, orderId: 5, quantityInCart: 0, detail: "Fresh salmon fillet", name: "Salmon Fillet", unitName: "kg", unitValue: "1", nutritionWeight: "300g", image: "salmon_fillet.jpg", catName: "Fish", typeName: "Fish", offerPrice: 18, itemPrice: 18, totalPrice: 0, price: 18),
        Product(id: 14, prodId: 502, catId: 5, brandId: 14, typeId: 104, orderId: 5, quantityInCart: 0, detail: "Fresh cod fillet", name: "Cod Fillet", unitName: "kg", unitValue: "1", nutritionWeight: "400g", image: "cod_fillet.jpg", catName: "Fish", typeName: "Fish", offerPrice: 15, itemPrice: 15, totalPrice: 0, price: 15),
        Product(id: 15, prodId: 503, catId: 5, brandId: 14, typeId: 104, orderId: 5, quantityInCart: 0, detail: "Fresh trout fillet", name: "Trout Fillet", unitName: "kg", unitValue: "1", nutritionWeight: "350g", image: "trout_fillet.jpg", catName: "Fish", typeName: "Fish", offerPrice: 20, itemPrice: 20, totalPrice: 0, price: 20)
    ]
    
    // Общий массив категорий
    static let allCategories: [ProductCategory] = [
        ProductCategory(id: 1, name: "Fruits", products: fruits),
        ProductCategory(id: 2, name: "Berries", products: berries),
        ProductCategory(id: 3, name: "Vegetables", products: vegetables),
        ProductCategory(id: 4, name: "Meat", products: meat),
        ProductCategory(id: 5, name: "Fish", products: fish)
    ]
}
