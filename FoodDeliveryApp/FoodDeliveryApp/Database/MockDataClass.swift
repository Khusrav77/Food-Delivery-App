//
//  MockDataClass.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 9/19/24.
//

import Foundation

class MockDataClass: ObservableObject {
    static let shared: MockDataClass = MockDataClass()
    
    let mockProducts: [MockProductModel] = [
        // Фрукты
        MockProductModel(id: 1, name: "Яблоко", category: "Фрукты", price: 34, description: "Свежие и сочные яблоки", imageName: "apple"),
        MockProductModel(id: 2, name: "Банан", category: "Фрукты", price: 56, description: "Спелые бананы", imageName: "banana"),
        MockProductModel(id: 3, name: "Апельсин", category: "Фрукты", price: 87, description: "Апельсины с насыщенным вкусом", imageName: "orange"),
        MockProductModel(id: 4, name: "Киви", category: "Фрукты", price: 89, description: "Киви с мягким сердцевинкой", imageName: "kiwi"),
        MockProductModel(id: 5, name: "Виноград", category: "Фрукты", price: 99, description: "Свежий виноград", imageName: "grape"),

        // Овощи
        MockProductModel(id: 6, name: "Морковь", category: "Овощи", price: 132, description: "Морковь для салатов и супов", imageName: "carrot"),
        MockProductModel(id: 7, name: "Картофель", category: "Овощи", price: 345, description: "Картофель для запекания и пюре", imageName: "potato"),
        MockProductModel(id: 8, name: "Томат", category: "Овощи", price: 234, description: "Свежие томаты", imageName: "tomato"),
        MockProductModel(id: 9, name: "Огурец", category: "Овощи", price: 134, description: "Хрустящие огурцы", imageName: "cucumber"),
        MockProductModel(id: 10, name: "Лук", category: "Овощи", price: 99, description: "Свежий лук", imageName: "onion"),

        // Мясо
        MockProductModel(id: 11, name: "Курица", category: "Мясо", price: 89, description: "Свежая курица", imageName: "chicken"),
        MockProductModel(id: 12, name: "Говядина", category: "Мясо", price: 98, description: "Сочное говяжье мясо", imageName: "beef"),
        MockProductModel(id: 13, name: "Свинина", category: "Мясо", price: 122, description: "Свежая свинина", imageName: "pork"),
        MockProductModel(id: 14, name: "Баранина", category: "Мясо", price: 111, description: "Баранина высшего сорта", imageName: "lamb"),
        MockProductModel(id: 15, name: "Индейка", category: "Мясо", price: 231, description: "Индейка для запекания", imageName: "turkey"),

        // Рыба
        MockProductModel(id: 16, name: "Лосось", category: "Рыба", price: 56, description: "Свежий лосось", imageName: "salmon"),
        MockProductModel(id: 17, name: "Тунец", category: "Рыба", price: 88, description: "Свежий тунец", imageName: "tuna"),
        MockProductModel(id: 18, name: "Треска", category: "Рыба", price: 89, description: "Свежая треска", imageName: "cod"),
        MockProductModel(id: 19, name: "Форель", category: "Рыба", price: 99, description: "Свежая форель", imageName: "trout"),
        MockProductModel(id: 20, name: "Креветки", category: "Рыба", price: 98, description: "Свежие креветки", imageName: "shrimp"),

        // Молочное
        MockProductModel(id: 21, name: "Молоко", category: "Молочное", price: 76, description: "Свежее молоко", imageName: "milk"),
        MockProductModel(id: 22, name: "Йогурт", category: "Молочное", price: 56, description: "Натуральный йогурт", imageName: "yogurt"),
        MockProductModel(id: 23, name: "Сыр", category: "Молочное", price: 67, description: "Твердый сыр", imageName: "cheese"),
        MockProductModel(id: 24, name: "Сливочное масло", category: "Молочное", price: 67, description: "Свежесливочное масло", imageName: "butter"),
        MockProductModel(id: 25, name: "Творог", category: "Молочное", price: 78, description: "Натуральный творог", imageName: "cottage_cheese"),

        // Бакалея
        MockProductModel(id: 26, name: "Макароны", category: "Бакалея", price: 89, description: "Качественные макароны", imageName: "pasta"),
        MockProductModel(id: 27, name: "Рис", category: "Бакалея", price: 89, description: "Белый рис", imageName: "rice"),
        MockProductModel(id: 28, name: "Крупа", category: "Бакалея", price: 56, description: "Разнообразные крупы", imageName: "groats"),
        MockProductModel(id: 29, name: "Мука", category: "Бакалея", price: 67, description: "Пшеничная мука", imageName: "flour"),
        MockProductModel(id: 30, name: "Сахар", category: "Бакалея", price: 78, description: "Белый сахар", imageName: "sugar"),

        // Заморозка
        MockProductModel(id: 31, name: "Замороженные овощи", category: "Заморозка", price: 89, description: "Микс замороженных овощей", imageName: "frozen_vegetables"),
        MockProductModel(id: 32, name: "Замороженная рыба", category: "Заморозка", price: 67, description: "Замороженная рыба", imageName: "frozen_fish"),
        MockProductModel(id: 33, name: "Замороженное мясо", category: "Заморозка", price: 89, description: "Замороженное мясо", imageName: "frozen_meat"),
        MockProductModel(id: 34, name: "Замороженные ягоды", category: "Заморозка", price: 89, description: "Замороженные ягоды", imageName: "frozen_berries"),
        MockProductModel(id: 35, name: "Замороженные фрукты", category: "Заморозка", price: 76, description: "Замороженные фрукты", imageName: "frozen_fruits"),

        // Для детей
        MockProductModel(id: 36, name: "Детские пюре", category: "Для детей", price: 78, description: "Пюре для детей", imageName: "baby_puree"),
        MockProductModel(id: 37, name: "Детские каши", category: "Для детей", price: 78, description: "Каши для детей", imageName: "baby_cereal"),
        MockProductModel(id: 38, name: "Детские соки", category: "Для детей", price: 78, description: "Соки для детей", imageName: "baby_juice"),
        MockProductModel(id: 39, name: "Детские смеси", category: "Для детей", price: 78,
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

    
}
