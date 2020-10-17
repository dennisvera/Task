//
//  RowView.swift
//  TaskList
//
//  Created by Dennis Vera on 10/17/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import SwiftUI

struct RowView: View {
  
  // MARK: - Properties
  
 @Binding var task: Task
  
  let checkmark = Image(systemName: "checkmark")
  
  // MARK: - Body
  
  var body: some View {
    NavigationLink(destination: TaskEditingView(task: $task)) {
      if task.completed {
        checkmark
      } else {
        checkmark.hidden()
      }
      Text(task.name)
        .strikethrough(task.completed)
    }
  }
}

struct RowView_Previews: PreviewProvider {
  static var previews: some View {
    RowView(task: .constant(Task(name: "To Do" )))
  }
}
