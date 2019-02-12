//
//  MyUtils.swift
//  ZombieConga_prac1
//
//  Created by Lavatar on 2018/12/10.
//  Copyright © 2018 chiaWei. All rights reserved.
//

import Foundation
import CoreGraphics


// The class extension adds some handy methods to get the length of the point, return a normalized version of the point (i.e., length 1) and get the angle of the point.
//MARK:- 取得 2點間的長度, 並取得 2點 的 角度
extension CGPoint {
    public func length() -> CGFloat {
        return sqrt(x*x + y*y)
    }
    
    public func normalized() -> CGPoint {
        return self / length()
    }
    
    var angle: CGFloat {
        return atan2(y, x)
    }
    
}

//MARK: - Smooth moves
// 有時在兩個角度之間旋轉的最短路徑是向左移動，有時則向右移動。
// 例如，如果從0度開始並想要轉向270度，則轉動-90度比轉動270度更短。
// 找到兩個角度之間的差異，切掉任何大於360度的數量，然後判斷它是向右/左移動。
public let π = CGFloat.pi

public func shortestAngleBetween(angle1: CGFloat, angle2: CGFloat) -> CGFloat {
    let twoπ = π * 2.0
    var angle = (angle2 - angle1).truncatingRemainder(dividingBy: twoπ)
    
    if angle >= π {
        angle = angle - twoπ
    }
    if angle <= -π {
        angle = angle + twoπ
    }
    return angle
}

extension CGFloat {
    //CGFloat >= 0.0 時 為 1.0, 否則 皆為 -1.0
    public func sign() -> CGFloat {
        return self >= 0.0 ? 1.0 : -1.0
    }
}
