//
//  TaskController.swift
//  Task2
//
//  Created by Chandi Abey  on 8/25/16.
//  Copyright © 2016 Chandi Abey . All rights reserved.
//

import Foundation
import CoreData

class TaskController {
    
    static let sharedController = TaskController()
    
    
    var tasks: [Task] = []
    
    init() {
        
        tasks = fetchTasks()
    }
 
    
    //add a completedTasks computed array property that returns only complete tasks. use a filter function on the tasks array.
    var completedTasks: [Task] {
        //skylar helped with this boolvalue because isComplete in core data does not return bool and we need a function to cast it as a bool
        let completedTasks = tasks.filter({$0.isComplete.boolValue})
        return completedTasks
    }
    
    
    var incompletedTasks: [Task] {
        let incompletedTasks = tasks.filter({!$0.isComplete.boolValue})
        return incompletedTasks
    }
        
 
    var mockTasks: [Task] {
        let task1 = Task(name: "cooking", due: NSDate(), notes: "Doesn't matter")
        let task2 = Task(name: "cooking", notes: "make lunch", isComplete: true)
        let task3 = Task(name: "writing", notes: "Descendus Ad Infernos")
        let task4 = Task(name: "cleaning", notes: "laundry")
        
        return [task1, task2, task3, task4]
    }
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    
    func removeTask(task: Task) {
        if let index = tasks.indexOf(task) {
            tasks.removeAtIndex(index)
        }
        
    }
    
    
    
    
    
    func updateTask(task: Task, name: String, notes: String? , due: NSDate?, isComplete: Bool) {
        
        
    
    }
    
    func saveToPersistentStore() {
        
    }
    

    
  
    
    func fetchTasks() -> [Task] {
    
        return mockTasks 
    }
    
    
}