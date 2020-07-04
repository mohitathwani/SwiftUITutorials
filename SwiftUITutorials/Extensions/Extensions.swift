//
//  Extensions.swift
//  SwiftUITutorials
//
//  Created by TeraMo Labs on 7/1/20.
//  Copyright © 2020 Mohit Athwani. All rights reserved.
//

import SwiftUI

extension Color {
  static let tabBarColor = Color("tabBarColor")
  
  static let tabBarItemDefaultTintColor = Color("tabBarItemDefaultTintColor")
  
  static let tabBarItemSelectedTintColor = Color("tabBarItemSelectedTintColor")
}

extension Font {
  static func nunitoBold(size: Double) -> Font {
    return Font.custom("Nunito-Bold", size: CGFloat(size))
  }
}
