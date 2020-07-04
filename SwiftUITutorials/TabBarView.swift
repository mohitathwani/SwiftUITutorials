//
//  TabBarView.swift
//  SwiftUITutorials
//
//  Created by TeraMo Labs on 7/1/20.
//  Copyright © 2020 Mohit Athwani. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
  
  private let cornerRadius: CGFloat = 16
  private let height: CGFloat = 95
  private let shadowRadius: CGFloat = 16
  
  let tabBarItems: [TabBarItem]
  
  @State var selectedIndex = 0
  
  var body: some View {
    ZStack {
      containerBox
      prominentItemView
//      tabBarItemsView
    }
  }
}

private extension TabBarView {
  private var containerBox: some View {
    Rectangle()
      .fill(Color.tabBarColor)
      .cornerRadius(cornerRadius)
      .frame(height: height)
      .shadow(radius: shadowRadius)
  }
  
  private var prominentItemView: some View {
    ProminentTabBarItemView(systemImageName: "plus")
      .padding(.top, -70)
  }
  
  private var tabBarItemsView: some View {
    HStack {
      ForEach(0..<tabBarItems.count) { idx in
        TabBarItemView(tabBarItem: self.tabBarItems[idx],
                       selectedIndex: self.selectedIndex,
                       tabBarIndex: idx,
                       defaultColor: .tabBarItemDefaultTintColor,
                       selectedColor: .tabBarItemSelectedTintColor,
                       font: .nunitoBold(size: 14))
          .padding(.horizontal, 5)
          .onTapGesture {
            self.selectedIndex = idx
        }
      }
    }
  }
}

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView(tabBarItems: MockProvider.tabBarItems)
  }
}
