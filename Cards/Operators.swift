//
//  Operators.swift
//  Cards
//
//  Created by Ravshanbek Tursunbaev on 2023/05/17.
//

import SwiftUI

func +(left: CGSize, right: CGSize)-> CGSize{
    CGSize(width: left.width + right.width,
           height: left.height + right.height)
}
