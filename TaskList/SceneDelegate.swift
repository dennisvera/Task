//
//  SceneDelegate.swift
//  TaskList
//
//  Created by Dennis Vera on 10/16/20.
//  Copyright © 2020 Dennis Vera. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  // MARK: - Properties
  
  var window: UIWindow?
  
  func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
    // Use a UIHostingController as window root view controller.
    if let windowScene = scene as? UIWindowScene {
      let window = UIWindow(windowScene: windowScene)
      
      // Create the SwiftUI view that provides the window contents.
      let contentView = TaskListView(taskStore: TaskStore())
      
      window.rootViewController = UIHostingController(rootView: contentView)
      self.window = window
      window.makeKeyAndVisible()
    }
  }
}

