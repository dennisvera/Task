//
//  NewTaskView.swift
//  TaskList
//
//  Created by Dennis Vera on 10/17/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
  
  // MARK: - Properties
  
  var taskStore: TaskStore
  
  // MARK: - State Properties
  
  @State var text = ""
  
  // MARK: - Environment Properties
  
  @Environment(\.presentationMode) var presentationMode
  
  // MARK: - Body
  
  var body: some View {
    Form {
      TextField("Task Name", text: $text)
      
      Button("Add") {
        self.taskStore.tasks.append(Task(name: self.text))
        self.presentationMode.wrappedValue.dismiss()
      }
      .disabled(text.isEmpty)
    }
  }
}

struct NewTaskView_Previews: PreviewProvider {
  static var previews: some View {
    NewTaskView(taskStore: TaskStore())
  }
}
