//
//  ProminentTabBarItemView.swift
//  SwiftUITutorials
//
//  Created by TeraMo Labs on 7/4/20.
//  Copyright © 2020 Mohit Athwani. All rights reserved.
//

import SwiftUI

struct ProminentTabBarItemView: View {
  
  private var gradient: LinearGradient {
    let endColor = Color(red: 0.495, green: 0.945, blue: 0.571)
    
    let startColor = Color(red: 0.176, green: 0.784, blue: 0.59)
    
    let gradient = Gradient(colors: [startColor, endColor])
    
    return LinearGradient(gradient: gradient, startPoint: .bottomLeading, endPoint: .topTrailing)
  }
  let systemImageName: String
    var body: some View {
      ZStack() {
        Circle()
        .size(CGSize(width: 70, height: 70))
          .foregroundColor(.white)
        
        Circle()
        .size(CGSize(width: 60, height: 60))
          .fill(gradient)
        .offset(x: 5, y: 5)
        
        Image(systemName: systemImageName)
        .resizable()
          .frame(width: 30, height: 30)
          .foregroundColor(.white)
      }.frame(width: 70, height:70)
    }
}

struct ProminentTabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
      ProminentTabBarItemView(systemImageName: "plus")
    }
}
