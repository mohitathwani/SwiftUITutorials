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
  
  private let prominentItemWidth: CGFloat = 70
  
  private var prominentItemTopPadding: CGFloat {
    return -prominentItemWidth
  }
  
  let tabBarItems: [TabBarItem]
  let prominentItemImageName: String
  
  @State var selectedIndex = 0
  
  var body: some View {
    ZStack {
      containerBox
      prominentItemView
      tabBarItemsView
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
    ProminentTabBarItemView(systemImageName: prominentItemImageName)
      .padding(.top, prominentItemTopPadding)
  }
  
  private func tabBarItemWidth(from proxy: GeometryProxy) -> CGFloat {
    return (proxy.frame(in: .global).width - prominentItemWidth) / 4
  }
  
  private var tabBarItemsView: some View {
    GeometryReader { geo in
      HStack {
        ForEach(0..<2) { idx in
          TabBarItemView(tabBarItem: self.tabBarItems[idx],
                         selectedIndex: self.selectedIndex,
                         tabBarIndex: idx,
                         defaultColor: .tabBarItemDefaultTintColor,
                         selectedColor: .tabBarItemSelectedTintColor,
                         font: .nunitoBold(size: 14))
            .frame(width: self.tabBarItemWidth(from: geo))
            .onTapGesture {
              self.selectedIndex = idx
          }
        }
        
        Spacer()
        
        ForEach(2..<self.tabBarItems.count) { idx in
          TabBarItemView(tabBarItem: self.tabBarItems[idx],
                         selectedIndex: self.selectedIndex,
                         tabBarIndex: idx,
                         defaultColor: .tabBarItemDefaultTintColor,
                         selectedColor: .tabBarItemSelectedTintColor,
                         font: .nunitoBold(size: 14))
            .frame(width: self.tabBarItemWidth(from: geo))
            .onTapGesture {
              self.selectedIndex = idx
          }
        }
      }
    }
  }
}

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView(tabBarItems: MockProvider.tabBarItems, prominentItemImageName: "plus")
  }
}
