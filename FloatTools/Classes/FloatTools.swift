
//
//  MyUtils.swift
//  ZombieConga_prac1
//
//  Created by Lavatar on 2018/12/10.
//  Copyright © 2018 chiaWei. All rights reserved.
//

import Foundation
import CoreGraphics

//在 CGPoint 間 可以 進行 加法_plus
public func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func += (left: inout CGPoint, right: CGPoint) {
    left = left + right
}

// 在 CGPoint 間 可以 進行 減法_subtraction
public func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

public func -= (left: inout CGPoint, right: CGPoint) {
    left = left - right
}

// 在 CGPoint 間 可以 進行 乘法_multiplication

public func * (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x * right.x, y: left.y * right.y)
}

public func *= (left: inout CGPoint, right: CGPoint) {
    left = left * right
}

// CGPoint * CGFloat = CGPoint
// CGPoint 倍數 計算
public func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x * scalar, y: point.y * scalar)
}

public func *= (point: inout CGPoint, scalar: CGFloat) {
    point = point * scalar
}


// 在 CGPoint 間 可以 進行 除法_division

public func / (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x / right.x, y: left.y / right.y)
}

public func /= (left: inout CGPoint, right: CGPoint) {
    left = left / right
}

// CGPoint / CGFloat = CGPoint
// CGPoint 倍數 減少
public func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x / scalar, y: point.y / scalar)
}

public func /= (point: inout CGPoint, scalar: CGFloat) {
    point = point / scalar
}


