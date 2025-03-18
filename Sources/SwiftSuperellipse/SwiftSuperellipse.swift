// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct Superellipse: Shape {
    
    public init(_ n: CGFloat) {
        self.n = n
    }
    
    public init(_ preset: SuperellipsePreset) {
        self.n = preset.rawValue
    }
    
    public func getAngle(_ t: CGFloat) -> (CGFloat, CGFloat) {
        (pow(abs(cos(t)), 2 / n) * cos(t).signVal(), pow(abs(sin(t)), 2 / n) * sin(t).signVal())
    }
    
    public var n: CGFloat = 5

    public func path(in rect: CGRect) -> Path {
        var path = Path()

        let a = rect.width / 2
        let b = rect.height / 2
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        let step = CGFloat.pi / max(n.magnitudeSquared, 100)
        
        //normal square for intuitiveness, even if straying from expected value
        if n == 1 {
            path.addRect(rect)
            return path
        }
        
        //set starting value
        let startX = center.x + a * getAngle(0).0
        let startY = center.y + b * getAngle(0).1
        path.move(to: CGPoint(x: startX, y: startY))
        
        
        //step through angles
        for t in stride(from: step, through: 2 * .pi, by: step) {
            let x = center.x + a * getAngle(t).0
            let y = center.y + b * getAngle(t).1

            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        path.closeSubpath()
        return path
    }
}

public enum SuperellipsePreset: CGFloat {
    case appIcon = 5.2
    
    case square = 1
    case circle = 2
    case rounded = 2.5
    case bubbly = 3.5
}

fileprivate extension CGFloat {
    func signVal() -> CGFloat {
        return self < 0 ? -1 : 1
    }
}
