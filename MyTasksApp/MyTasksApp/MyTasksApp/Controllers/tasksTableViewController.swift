//
//  tasksTableViewController.swift
//  MyTasksApp
//
//  Created by user220237 on 5/3/22.
//

import UIKit

let work = Category(name: "Work", color: UIColor.green)
let study = Category(name: "Study", color: UIColor.blue)

let tasks: [Task] = [
    Task(name: "Create presentation for tomorrow", date: Date(), category: work),
    Task(name: "Study math for my computer science test. I also have 2 more tests next week so I must focus 100% on these tests.", date: Date(), category: study),

]

class tasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! taskTableViewCell
        let task = tasks[indexPath.row]
            
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoruNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
        
    }

}
