//
//  ColorRGB.swift
//  iGym
//
//  Created by Antonio Virgone on 07/03/23.
//

import Foundation
import SwiftUI

func getColorFromRGB(r: Int, g: Int, b: Int) -> Color {
    return Color(red: Double(r)/Double(255), green: Double(g)/Double(255), blue: Double(b)/Double(255))
}
