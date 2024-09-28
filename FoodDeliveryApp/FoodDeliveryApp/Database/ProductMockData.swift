//
//  Untitled.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/27/24.
//
import Foundation

struct ProductMockData {
    // Мок данные для продуктов в разных категориях
    static let fruits: [Product] = [
        Product(
            id: 1,
            prodId: 101,
            typeId: 1,
            typeName: "Свежие",
            brandId: 1,
            brandName: "Органик Фармс",
            name: "Яблоко",
            detail: "Свежие красные яблоки",
            unitName: .grams,
            unitValue: "500g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 2,
            image: "apple.png",
            price: Price(basePrice: 150, offerPrice: 120, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        ),
        Product(
            id: 2,
            prodId: 102,
            typeId: 1,
            typeName: "Свежие",
            brandId: 1,
            brandName: "Органик Фармс",
            name: "Банан",
            detail: "Свежие спелые бананы",
            unitName: .grams,
            unitValue: "1000g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 1,
            image: "banana.png",
            price: Price(basePrice: 100, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        ),
        Product(
            id: 3,
            prodId: 103,
            typeId: 1,
            typeName: "Свежие",
            brandId: 1,
            brandName: "Органик Фармс",
            name: "Апельсин",
            detail: "Сочные апельсины",
            unitName: .grams,
            unitValue: "750g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 3,
            image: "orange.png",
            price: Price(basePrice: 200, offerPrice: 180, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: true
        )
    ]

    static  let vegetables: [Product] = [
        Product(
            id: 4,
            prodId: 201,
            typeId: 2,
            typeName: "Органические",
            brandId: 2,
            brandName: "Зеленая Ферма",
            name: "Морковь",
            detail: "Свежие органические моркови",
            unitName: .grams,
            unitValue: "500g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 2,
            image: "carrot.png",
            price: Price(basePrice: 80, offerPrice: 70, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        ),
        Product(
            id: 5,
            prodId: 202,
            typeId: 2,
            typeName: "Органические",
            brandId: 2,
            brandName: "Зеленая Ферма",
            name: "Картошка",
            detail: "Органическая картошка",
            unitName: .grams,
            unitValue: "1000g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 5,
            image: "potato.png",
            price: Price(basePrice: 120, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: true
        ),
        Product(
            id: 6,
            prodId: 203,
            typeId: 2,
            typeName: "Органические",
            brandId: 2,
            brandName: "Зеленая Ферма",
            name: "Помидор",
            detail: "Спелые помидоры",
            unitName: .grams,
            unitValue: "750g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 3,
            image: "tomato.png",
            price: Price(basePrice: 150, offerPrice: 140, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        )
    ]

    static  let meat: [Product] = [
        Product(
            id: 7,
            prodId: 301,
            typeId: 3,
            typeName: "Свежие",
            brandId: 3,
            brandName: "Мясо Ред",
            name: "Говядина",
            detail: "Свежая говядина",
            unitName: .grams,
            unitValue: "1000g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 1,
            image: "beef.png",
            price: Price(basePrice: 700, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        ),
        Product(
            id: 8,
            prodId: 302,
            typeId: 3,
            typeName: "Свежие",
            brandId: 3,
            brandName: "Мясо Ред",
            name: "Курица",
            detail: "Свежая куриная грудка",
            unitName: .grams,
            unitValue: "500g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 2,
            image: "chicken.png",
            price: Price(basePrice: 300, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: true
        ),
        Product(
            id: 9,
            prodId: 303,
            typeId: 3,
            typeName: "Свежие",
            brandId: 3,
            brandName: "Мясо Ред",
            name: "Свинина",
            detail: "Свежая свинина",
            unitName: .grams,
            unitValue: "750g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 3,
            image: "pork.png",
            price: Price(basePrice: 400, offerPrice: 380, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        )
    ]

    static  let fish: [Product] = [
        Product(
            id: 10,
            prodId: 401,
            typeId: 4,
            typeName: "Свежая",
            brandId: 4,
            brandName: "Рыба Лимитед",
            name: "Лосось",
            detail: "Свежий лосось",
            unitName: .grams,
            unitValue: "500g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 1,
            image: "salmon.png",
            price: Price(basePrice: 800, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        ),
        Product(
            id: 11,
            prodId: 402,
            typeId: 4,
            typeName: "Свежая",
            brandId: 4,
            brandName: "Рыба Лимитед",
            name: "Тунец",
            detail: "Свежий тунец",
            unitName: .grams,
            unitValue: "400g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 2,
            image: "tuna.png",
            price: Price(basePrice: 600, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: true
        ),
        Product(
            id: 12,
            prodId: 403,
            typeId: 4,
            typeName: "Свежая",
            brandId: 4,
            brandName: "Рыба Лимитед",
            name: "Скумбрия",
            detail: "Свежая скумбрия",
            unitName: .grams,
            unitValue: "500g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 1,
            image: "mackerel.png",
            price: Price(basePrice: 500, offerPrice: 450, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        )
    ]

    static  let dairy: [Product] = [
        Product(
            id: 13,
            prodId: 501,
            typeId: 5,
            typeName: "Свежие",
            brandId: 5,
            brandName: "Молочный Мир",
            name: "Молоко",
            detail: "Свежая пастеризованное молоко",
            unitName: .liters,
            unitValue: "1L",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 1,
            image: "milk.png",
            price: Price(basePrice: 100, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        ),
        Product(
            id: 14,
            prodId: 502,
            typeId: 5,
            typeName: "Свежие",
            brandId: 5,
            brandName: "Молочный Мир",
            name: "Йогурт",
            detail: "Натуральный йогурт",
            unitName: .grams,
            unitValue: "200g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 2,
            image: "yogurt.png",
            price: Price(basePrice: 120, offerPrice: 110, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: true
        ),
        Product(
            id: 15,
            prodId: 503,
            typeId: 5,
            typeName: "Свежие",
            brandId: 5,
            brandName: "Молочный Мир",
            name: "Сыр",
            detail: "Вкусный сыр",
            unitName: .grams,
            unitValue: "300g",
            nutritionWeight: Nutrition(id: 1, nutritionName: "", nutritionValue: ""),
            quantityInCart: 1,
            image: "cheese.png",
            price: Price(basePrice: 500, offerPrice: nil, itemPrice: nil, totalPrice: nil),
            startDate: Date(),
            endDate: Date(),
            isFav: false
        )
    ]


    
    // Общий массив категорий
    static let allCategories: [ProductCategory] = [
        ProductCategory(id: 1, name: "Фрукты", products: fruits),
        ProductCategory(id: 2, name: "Овощи", products: vegetables),
        ProductCategory(id: 3, name: "Мясо", products: meat),
        ProductCategory(id: 4, name: "Рыба", products: fish),
        ProductCategory(id: 5, name: "Молочное", products: dairy),
        ProductCategory(id: 6, name: "Бакалея", products: fish),
        ProductCategory(id: 7, name: "Заморозка", products: fish),
        ProductCategory(id: 8, name: "Для детей", products: fish),
        ProductCategory(id: 9, name: "Сладкое", products: fish),
        ProductCategory(id: 10, name: "Сухофрукты", products: fish)
    ]
}


