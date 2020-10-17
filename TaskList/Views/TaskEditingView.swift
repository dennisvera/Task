//
//  TaskEditingView.swift
//  TaskList
//
//  Created by Dennis Vera on 10/17/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
  
  // MARK: - Properties
  
  @Binding var task: Task
  
  // MARK: - Body
  
  var body: some View {
    Form {
      TextField("Name", text: $task.name)
      Toggle("Completed", isOn: $task.completed)
    }
  }
}

struct TaskEditingView_Previews: PreviewProvider {
  
  // MARK: - Properties
  
  static var previews: some View {
    TaskEditingView(task: .constant(Task(name: "Editing")))
  }
}
