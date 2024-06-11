//
//  MockDataJson.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/10/24.
//

import Foundation


struct MockProduct: Identifiable, Equatable {
    
    var id: Int
    var name: String
    var category: String
    var price: Double
    var description: String
    var imageName: String
    
    
    static func == (lhs: MockProduct, rhs: MockProduct) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}





   let products: [MockProduct] = [
    // Фрукты
    MockProduct(id: 1, name: "Яблоко", category: "Фрукты", price: 1.99, description: "Свежие и сочные яблоки", imageName: "apple"),
    MockProduct(id: 2, name: "Банан", category: "Фрукты", price: 0.99, description: "Спелые бананы", imageName: "banana"),
    MockProduct(id: 3, name: "Апельсин", category: "Фрукты", price: 1.29, description: "Апельсины с насыщенным вкусом", imageName: "orange"),
    MockProduct(id: 4, name: "Киви", category: "Фрукты", price: 2.49, description: "Киви с мягким сердцевинкой", imageName: "kiwi"),
    MockProduct(id: 5, name: "Виноград", category: "Фрукты", price: 2.99, description: "Свежий виноград", imageName: "grape"),

    // Овощи
    MockProduct(id: 6, name: "Морковь", category: "Овощи", price: 0.79, description: "Морковь для салатов и супов", imageName: "carrot"),
    MockProduct(id: 7, name: "Картофель", category: "Овощи", price: 0.49, description: "Картофель для запекания и пюре", imageName: "potato"),
    MockProduct(id: 8, name: "Томат", category: "Овощи", price: 1.09, description: "Свежие томаты", imageName: "tomato"),
    MockProduct(id: 9, name: "Огурец", category: "Овощи", price: 0.89, description: "Хрустящие огурцы", imageName: "cucumber"),
    MockProduct(id: 10, name: "Лук", category: "Овощи", price: 0.59, description: "Свежий лук", imageName: "onion"),

    // Мясо
    MockProduct(id: 11, name: "Курица", category: "Мясо", price: 5.99, description: "Свежая курица", imageName: "chicken"),
    MockProduct(id: 12, name: "Говядина", category: "Мясо", price: 10.99, description: "Сочное говяжье мясо", imageName: "beef"),
    MockProduct(id: 13, name: "Свинина", category: "Мясо", price: 7.99, description: "Свежая свинина", imageName: "pork"),
    MockProduct(id: 14, name: "Баранина", category: "Мясо", price: 11.99, description: "Баранина высшего сорта", imageName: "lamb"),
    MockProduct(id: 15, name: "Индейка", category: "Мясо", price: 8.99, description: "Индейка для запекания", imageName: "turkey"),

    // Рыба
    MockProduct(id: 16, name: "Лосось", category: "Рыба", price: 12.99, description: "Свежий лосось", imageName: "salmon"),
    MockProduct(id: 17, name: "Тунец", category: "Рыба", price: 9.99, description: "Свежий тунец", imageName: "tuna"),
    MockProduct(id: 18, name: "Треска", category: "Рыба", price: 7.49, description: "Свежая треска", imageName: "cod"),
    MockProduct(id: 19, name: "Форель", category: "Рыба", price: 11.99, description: "Свежая форель", imageName: "trout"),
    MockProduct(id: 20, name: "Креветки", category: "Рыба", price: 14.99, description: "Свежие креветки", imageName: "shrimp"),

    // Молочное
    MockProduct(id: 21, name: "Молоко", category: "Молочное", price: 1.49, description: "Свежее молоко", imageName: "milk"),
    MockProduct(id: 22, name: "Йогурт", category: "Молочное", price: 0.99, description: "Натуральный йогурт", imageName: "yogurt"),
    MockProduct(id: 23, name: "Сыр", category: "Молочное", price: 2.99, description: "Твердый сыр", imageName: "cheese"),
    MockProduct(id: 24, name: "Сливочное масло", category: "Молочное", price: 1.99, description: "Свежесливочное масло", imageName: "butter"),
    MockProduct(id: 25, name: "Творог", category: "Молочное", price: 1.79, description: "Натуральный творог", imageName: "cottage_cheese"),

    // Бакалея
    MockProduct(id: 26, name: "Макароны", category: "Бакалея", price: 0.89, description: "Качественные макароны", imageName: "pasta"),
    MockProduct(id: 27, name: "Рис", category: "Бакалея", price: 0.99, description: "Белый рис", imageName: "rice"),
    MockProduct(id: 28, name: "Крупа", category: "Бакалея", price: 1.09, description: "Разнообразные крупы", imageName: "groats"),
    MockProduct(id: 29, name: "Мука", category: "Бакалея", price: 0.79, description: "Пшеничная мука", imageName: "flour"),
    MockProduct(id: 30, name: "Сахар", category: "Бакалея", price: 0.99, description: "Белый сахар", imageName: "sugar"),

    // Заморозка
    MockProduct(id: 31, name: "Замороженные овощи", category: "Заморозка", price: 2.49, description: "Микс замороженных овощей", imageName: "frozen_vegetables"),
    MockProduct(id: 32, name: "Замороженная рыба", category: "Заморозка", price: 5.99, description: "Замороженная рыба", imageName: "frozen_fish"),
    MockProduct(id: 33, name: "Замороженное мясо", category: "Заморозка", price: 4.99, description: "Замороженное мясо", imageName: "frozen_meat"),
    MockProduct(id: 34, name: "Замороженные ягоды", category: "Заморозка", price: 3.99, description: "Замороженные ягоды", imageName: "frozen_berries"),
    MockProduct(id: 35, name: "Замороженные фрукты", category: "Заморозка", price: 3.49, description: "Замороженные фрукты", imageName: "frozen_fruits"),

    // Для детей
    MockProduct(id: 36, name: "Детские пюре", category: "Для детей", price: 1.29, description: "Пюре для детей", imageName: "baby_puree"),
    MockProduct(id: 37, name: "Детские каши", category: "Для детей", price: 2.19, description: "Каши для детей", imageName: "baby_cereal"),
    MockProduct(id: 38, name: "Детские соки", category: "Для детей", price: 1.49, description: "Соки для детей", imageName: "baby_juice"),
    MockProduct(id: 39, name: "Детские смеси", category: "Для детей", price: 3.99,
                description: "Сокидлдетей", imageName: "baby_cereal")]





                





let type = ["fruits", "berries", "vegetables", "meat", "fish", "dairy", "groceries", "forKids", "sweets", "driedFruits", "readyFood", "froze", "foHome"]



let fruits = ["Яблоко", "Банан", "Апельсин", "Груша", "Виноград"]

let berries = ["Малина", "Клубника", "Черника", "Брусника", "Арбуз"]

let vegetables = ["Помидор", "Огурец", "Морковь", "Лук", "Капуста"]

let meat = ["Фарш говяжий", "Мякоть говяжий", "Суповой набор говяжий", "Гуляш из говядины", "Баранина"]

let fish = ["Лосось", "Окунь", "Треска", "Угорь", "Тунец"]

let dairy = ["Молоко", "Творог", "Сметана", "Йогурт", "Сыр"]

let groceries = ["Рис", "Гречка", "Масло", "Чай", "Фасоль"]

let forKids = ["Сок", "Пастила", "Молоко Детское", "Йогурит", "Творог"]

let sweets = ["Мед", "Сахар", "Шоколад", "Печение", "Торт"]

let driedFruits = ["Миндаль", "Фисташки", "Кешю", "Изюм", "Финики"]

let readyFood = ["Манты", "Плов", "Шашлык", "Табака", "Суп"]

let froze = ["Мороженое", "Пельмени", "Фарш", "Окунь", "Треска"]

let foHome = ["Мыло хозяйственное", "Стиральный порошок", "Гель для стирки", "Средство для посуды", "Салфетки для уборки"]














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

    

