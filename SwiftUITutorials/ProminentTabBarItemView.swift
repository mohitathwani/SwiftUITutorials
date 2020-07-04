//
//  ProminentTabBarItemView.swift
//  SwiftUITutorials
//
//  Created by TeraMo Labs on 7/4/20.
//  Copyright © 2020 Mohit Athwani. All rights reserved.
//

import SwiftUI

struct ProminentTabBarItemView: View {
  
  var width: CGFloat = 70
  
  private var innerCircleWidth: CGFloat {
    return width - 10
  }
  
  private var imageWidth: CGFloat {
    return innerCircleWidth / 2
  }
  
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
        .size(CGSize(width: width, height: width))
          .foregroundColor(.white)
        
        Circle()
        .size(CGSize(width: innerCircleWidth, height: innerCircleWidth))
          .fill(gradient)
        .offset(x: 5, y: 5)
        
        Image(systemName: systemImageName)
        .resizable()
          .frame(width: imageWidth, height: imageWidth)
          .foregroundColor(.white)
      }.frame(width: width, height: width)
    }
}

struct ProminentTabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
      ProminentTabBarItemView(systemImageName: "plus")
    }
}
