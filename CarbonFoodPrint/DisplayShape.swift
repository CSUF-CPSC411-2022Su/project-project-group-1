//
//  DisplayShape.swift
//  CarbonFoodPrint
//
//  Created by Jason Duong on 6/27/22.
//

import Foundation
import SwiftUI

struct CoverageMap: Shape {
    var bound = [CGFloat]()
    
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.maxX / 2, y: bound[0] * 50))
        path.addLine(to: CGPoint(x: rect.maxX - (rect.maxX / 200 * bound[1]), y: rect.maxY / 2))
        path.addLine(to: CGPoint(x: rect.maxX / 2, y: rect.maxY - (rect.maxY / 200 * bound[2])))
        path.addLine(to: CGPoint(x: bound[3], y: rect.maxY / 2))
        path.move(to: CGPoint(x: rect.maxX / 2, y: bound[0] * 50))

        return path
    }
}

struct DashedLine: Shape {
    // https://stackoverflow.com/questions/65248710/swiftui-how-to-make-a-vertical-dotted-line-using-shape
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))

        return path
    }
}
