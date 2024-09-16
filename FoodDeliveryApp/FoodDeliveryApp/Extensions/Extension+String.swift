//
//  UIKitExtension.swift
//  FoodDeliveryApp
//
//  Created by Khusrav Safiev on 6/3/24.
//

import Foundation


extension String {
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-Z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    
    func stringDateToDate(format: String = "yyyy-MM-dd'T'HH:mm:ss.SSSZ") -> Date? {
        let dateFomatter = DateFormatter()
        dateFomatter.dateFormat = format
        return dateFomatter.date(from: self)
    }
    
    func stringDateChangeFormat(currentformat: String, newFormat: String) -> String {
        let dateFormatter = DateFormatter()
        
        // Устанавливаем текущиц формат даты
        dateFormatter.dateFormat = currentformat
        
        // Пробуем преобразовать строку в дату
        guard let date = dateFormatter.date(from: self) else {
            return ""
        }
        
        // Устанавливаем новый формат даты
        dateFormatter.dateFormat = newFormat
        
        // Возвращаем строку даты в новом формате
        return dateFormatter.string(from: date)
        
        }
}


