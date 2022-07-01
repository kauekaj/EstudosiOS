//
//  CategoryRepository.swift
//  MyTasksApp
//
//  Created by kauekaj on 7/1/22.
//

import Foundation
import UIKit

class CategoryRepository {
    
    static func getCategories() -> [Category] {
        let categories = [
            Category(name: "Work", color: UIColor.green),
            Category(name: "Study", color: UIColor.blue),
            Category(name: "To Do", color: UIColor.yellow),
            Category(name: "Reminders", color: UIColor.red)
        ]
        return categories;
    }
    
}
