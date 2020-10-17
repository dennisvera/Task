//
//  TaskStore.swift
//  TaskList
//
//  Created by Dennis Vera on 10/16/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import Combine

final class TaskStore: ObservableObject {
  
  // MARK: - Properties
  
  @Published var prioritizedTasks = [
    PrioritizedTask(priority: .high,
                    tasks: [
                      "Laundry",
                      "Throw garbage out",
                      "Work on SwiftUI course"
    ]),
    PrioritizedTask(priority: .medium,
                    tasks: [
                      "Call Mom",
                      "Order Turntable Lab shirt",
                      "Make breakfast"
    ]),
    PrioritizedTask(priority: .low,
                    tasks: [
                      "Go to supermarket to buy eggs",
                      "Review Git"
    ]),
    PrioritizedTask(priority: .no,
                    tasks: [
                      "Vacuum and Swiffer floor"
    ])
  ]
  
  func getIndex(for priority: Task.Priority) -> Int {
    prioritizedTasks.firstIndex { $0.priority == priority }!
  }
}

extension TaskStore {
  
  struct PrioritizedTask {
    
    // MARK: - Properties
    
    let priority: Task.Priority
    var tasks: [Task]
  }
}

extension TaskStore.PrioritizedTask: Identifiable {
  
  // MARK: - Properties
  
  var id: Task.Priority { priority }
  
  // MARK: - Initializer
  
  init(priority: Task.Priority, tasks: [String]) {
    self.init(priority: priority,
              tasks: tasks.map { Task(name: $0)})
  }
}
