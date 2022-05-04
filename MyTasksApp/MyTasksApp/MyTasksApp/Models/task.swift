//
//  task.swift
//  MyTasksApp
//
//  Created by user220237 on 5/3/22.
//

import Foundation
import UIKit


struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: .black)
}
