//
//  TaskStore.swift
//  TaskList
//
//  Created by Dennis Vera on 10/16/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

final class TaskStore {
  
  // MARK: - Properties
  
  var tasks = [
     "Vacuum and Swiffer floor",
     "Laundry",
     "Throw garbage out",
     "Work on SwiftUI course",
     "Call Mom",
     "Order Turntable Lab shirt",
     "Make breakfast",
     "Go to supermarket to buy eggs",
     "Review Git"
    ].map { Task(name: $0) }
}
