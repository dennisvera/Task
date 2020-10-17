//
//  TaskListView.swift
//  TaskList
//
//  Created by Dennis Vera on 10/16/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
  
  // MARK: - Observable Properties
  
  @ObservedObject var taskStore: TaskStore
  
  // MARK: - State Properties
  
  @State var modelIsPresented = false
  
  // MARK: - Body
  
  var body: some View {
    NavigationView {
      List {
        ForEach(taskStore.prioritizedTasks) { index in
          SectionView(prioritizedTasks: self.$taskStore.prioritizedTasks[index])
        }
      }
      .listStyle( GroupedListStyle() )
      .navigationBarTitle("Tasks")
      .navigationBarItems(
        leading: EditButton(),
        trailing:
        Button(action: { self.modelIsPresented = true }) {
          Image(systemName: "plus")
        }
      )
    }
    .sheet(isPresented: $modelIsPresented) {
      NewTaskView(taskStore: self.taskStore)
    }
  }
}

struct TaskListView_Previews: PreviewProvider {
  
  // MARK: - Properties
  
  static var previews: some View {
    TaskListView(taskStore: TaskStore())
  }
}
