//
//  Task.swift
//  TaskList
//
//  Created by Dennis Vera on 10/16/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import Foundation

struct Task: Identifiable {
  
  // MARK: - Properties
  
  let id = UUID()
  
  // MARK: -
  
  var name: String
  var completed = false 
}

extension Task {
  
  enum Priority: String {
    
    // MARK: - Cases
    
    case no
    case low
    case medium
    case high
  }
}
