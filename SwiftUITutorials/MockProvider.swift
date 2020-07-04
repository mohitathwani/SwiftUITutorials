//
//  MockProvider.swift
//  SwiftUITutorials
//
//  Created by TeraMo Labs on 7/3/20.
//  Copyright © 2020 Mohit Athwani. All rights reserved.
//

import Foundation

struct MockProvider {
  static var tabBarItems: [TabBarItem] {
    var tabBarItems = [TabBarItem]()
    tabBarItems.append(TabBarItem(imageName: "rectangle.grid.1x2", title: "Dashboard"))
    tabBarItems.append(TabBarItem(imageName: "creditcard", title: "Accounts"))
    tabBarItems.append(TabBarItem(imageName: "chart.pie", title: "Reports"))
    tabBarItems.append(TabBarItem(imageName: "gear", title: "Settings"))
    return tabBarItems
  }
}
